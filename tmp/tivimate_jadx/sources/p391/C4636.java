package p391;

import java.util.ConcurrentModificationException;
import java.util.Map;
import p152.AbstractC2444;
import p386.InterfaceC4615;

/* renamed from: ⁱˏ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4636 implements Map.Entry, InterfaceC4615 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f17314;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C4641 f17315;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f17316;

    public C4636(C4641 c4641, int i) {
        this.f17315 = c4641;
        this.f17316 = i;
        this.f17314 = c4641.f17335;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return AbstractC2444.m5562(entry.getKey(), getKey()) && AbstractC2444.m5562(entry.getValue(), getValue());
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        m9195();
        return this.f17315.f17332[this.f17316];
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        m9195();
        return this.f17315.f17339[this.f17316];
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object key = getKey();
        int hashCode = key != null ? key.hashCode() : 0;
        Object value = getValue();
        return hashCode ^ (value != null ? value.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        m9195();
        C4641 c4641 = this.f17315;
        c4641.m9207();
        Object[] objArr = c4641.f17339;
        if (objArr == null) {
            int length = c4641.f17332.length;
            if (length < 0) {
                throw new IllegalArgumentException("capacity must be non-negative.");
            }
            objArr = new Object[length];
            c4641.f17339 = objArr;
        }
        int i = this.f17316;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        return obj2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getKey());
        sb.append('=');
        sb.append(getValue());
        return sb.toString();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m9195() {
        if (this.f17315.f17335 != this.f17314) {
            throw new ConcurrentModificationException("The backing map has been modified after this entry was obtained.");
        }
    }
}
