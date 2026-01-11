package p328;

import java.util.Arrays;
import java.util.List;
import p010.AbstractC0844;

/* renamed from: ᴵᵔ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4070 implements Cloneable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public InterfaceC4062 f15507;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f15508;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final List f15509;

    public C4070(C4079... c4079Arr) {
        int length = c4079Arr.length;
        this.f15508 = length;
        this.f15509 = Arrays.asList(c4079Arr);
        C4079 c4079 = c4079Arr[0];
        c4079Arr[length - 1].getClass();
    }

    public final String toString() {
        String str = " ";
        for (int i = 0; i < this.f15508; i++) {
            StringBuilder m3020 = AbstractC0844.m3020(str);
            m3020.append(Float.valueOf(((C4079) this.f15509.get(i)).f15547));
            m3020.append("  ");
            str = m3020.toString();
        }
        return str;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final C4070 clone() {
        List list = this.f15509;
        int size = list.size();
        C4079[] c4079Arr = new C4079[size];
        for (int i = 0; i < size; i++) {
            c4079Arr[i] = ((C4079) list.get(i)).clone();
        }
        return new C4070(c4079Arr);
    }
}
