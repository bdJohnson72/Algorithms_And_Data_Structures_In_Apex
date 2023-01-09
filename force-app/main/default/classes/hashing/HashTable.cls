/**
 * Created by Brooks Johnson on 7/19/2022.
 */

public with sharing class HashTable {
  private List<HashEntry> bucket;
  private Integer slots;
  private Integer size;

  public HashTable() {
    this.bucket = new HashEntry[10];
    this.slots = 10;
    this.size = 0;
  }

  public Integer getIndex(Object key) {
    Integer hashCode = key.hashCode();
    Integer index = Math.mod(hashCode, slots);
    //check for a negative index
    if (index < 0) {
      index = Math.mod((index + slots), slots);
    }
    return index;
  }

  public void insertTable(Integer key, Object value) {
    Integer b_index = getIndex(key);
    HashEntry head = bucket.get(b_index);
    //check if key  exists
    while (head != null) {
      if (head.key == key) {
        head.value = value;
        return;
      }
      head = head.next;
    }
    //insert key in chain
    size++;
    head = bucket.get(b_index);
    HashEntry newSlot = new HashEntry(key, value);
    newSlot.next = head;
    bucket.add(b_index, newSlot);
    //Checks if array >60% of the array gets filled
    if ((1.0 * size) / slots >= 0.6) {
      List<HashEntry> temp = bucket;
      bucket = new List<HashEntry>();
      slots = 2 * slots;
      size = 0;
      for (Integer i = 0; i < slots; i++)
        bucket.add(null);

      for (HashEntry head_Node : temp) {
        while (head_Node != null) {
          insertTable(head_Node.key, head_Node.value);
          head_Node = head_Node.next;
        }
      }
    }
  }

  public Integer getSize() {
    return this.size;
  }

  public Boolean isEmpty() {
    return this.size == 0;
  }
}
