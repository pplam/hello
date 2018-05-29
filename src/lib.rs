#![feature(lang_items)]
#![no_std]
extern "C" {
  fn printi(c: u64);
  fn prints(s: *const u8);
}
#[no_mangle]
pub extern "C" fn init() {
  unsafe { printi(5); }
}
#[no_mangle]
pub extern "C" fn apply(_: u64, _: u64) {
  let s = "Hello World";
  let ptr = s.as_ptr();
  unsafe  { prints(ptr); }
}
#[lang = "panic_fmt"] fn panic_fmt() -> ! {loop {} }
