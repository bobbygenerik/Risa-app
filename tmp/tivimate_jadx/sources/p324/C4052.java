package p324;

import p152.AbstractC2444;
import p329.InterfaceC4102;

/* renamed from: ᴵי.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4052 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC4102 f15441;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object f15442;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Throwable f15443;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC3992 f15444;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f15445;

    public C4052(Object obj, InterfaceC3992 interfaceC3992, InterfaceC4102 interfaceC4102, Object obj2, Throwable th) {
        this.f15445 = obj;
        this.f15444 = interfaceC3992;
        this.f15441 = interfaceC4102;
        this.f15442 = obj2;
        this.f15443 = th;
    }

    public /* synthetic */ C4052(Object obj, InterfaceC3992 interfaceC3992, InterfaceC4102 interfaceC4102, Throwable th, int i) {
        this(obj, (i & 2) != 0 ? null : interfaceC3992, (i & 4) != 0 ? null : interfaceC4102, (Object) null, (i & 16) != 0 ? null : th);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C4052 m8268(C4052 c4052, InterfaceC3992 interfaceC3992, Throwable th, int i) {
        Object obj = c4052.f15445;
        if ((i & 2) != 0) {
            interfaceC3992 = c4052.f15444;
        }
        InterfaceC3992 interfaceC39922 = interfaceC3992;
        InterfaceC4102 interfaceC4102 = c4052.f15441;
        Object obj2 = c4052.f15442;
        if ((i & 16) != 0) {
            th = c4052.f15443;
        }
        return new C4052(obj, interfaceC39922, interfaceC4102, obj2, th);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4052)) {
            return false;
        }
        C4052 c4052 = (C4052) obj;
        return AbstractC2444.m5562(this.f15445, c4052.f15445) && AbstractC2444.m5562(this.f15444, c4052.f15444) && AbstractC2444.m5562(this.f15441, c4052.f15441) && AbstractC2444.m5562(this.f15442, c4052.f15442) && AbstractC2444.m5562(this.f15443, c4052.f15443);
    }

    public final int hashCode() {
        Object obj = this.f15445;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        InterfaceC3992 interfaceC3992 = this.f15444;
        int hashCode2 = (hashCode + (interfaceC3992 == null ? 0 : interfaceC3992.hashCode())) * 31;
        InterfaceC4102 interfaceC4102 = this.f15441;
        int hashCode3 = (hashCode2 + (interfaceC4102 == null ? 0 : interfaceC4102.hashCode())) * 31;
        Object obj2 = this.f15442;
        int hashCode4 = (hashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.f15443;
        return hashCode4 + (th != null ? th.hashCode() : 0);
    }

    public final String toString() {
        return "CompletedContinuation(result=" + this.f15445 + ", cancelHandler=" + this.f15444 + ", onCancellation=" + this.f15441 + ", idempotentResume=" + this.f15442 + ", cancelCause=" + this.f15443 + ')';
    }
}
