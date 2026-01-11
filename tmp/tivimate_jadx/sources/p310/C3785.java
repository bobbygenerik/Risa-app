package p310;

import android.support.v4.media.session.AbstractC0001;
import java.io.Serializable;
import p430.AbstractC5096;
import p430.AbstractC5100;

/* renamed from: ᐧᵔ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3785 extends AbstractC5100 implements InterfaceC3786, Serializable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Enum[] f14698;

    public C3785(Enum[] enumArr) {
        this.f14698 = enumArr;
    }

    @Override // p430.AbstractC5112, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (!(obj instanceof Enum)) {
            return false;
        }
        Enum r4 = (Enum) obj;
        return ((Enum) AbstractC5096.m10011(r4.ordinal(), this.f14698)) == r4;
    }

    @Override // java.util.List
    public final Object get(int i) {
        Enum[] enumArr = this.f14698;
        int length = enumArr.length;
        if (i < 0 || i >= length) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, length, "index: ", ", size: "));
        }
        return enumArr[i];
    }

    @Override // p430.AbstractC5100, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Enum)) {
            return -1;
        }
        Enum r4 = (Enum) obj;
        int ordinal = r4.ordinal();
        if (((Enum) AbstractC5096.m10011(ordinal, this.f14698)) == r4) {
            return ordinal;
        }
        return -1;
    }

    @Override // p430.AbstractC5100, java.util.List
    public final int lastIndexOf(Object obj) {
        if (!(obj instanceof Enum)) {
            return -1;
        }
        Enum r4 = (Enum) obj;
        int ordinal = r4.ordinal();
        if (((Enum) AbstractC5096.m10011(ordinal, this.f14698)) == r4) {
            return ordinal;
        }
        return -1;
    }

    @Override // p430.AbstractC5112
    /* renamed from: ﹳٴ */
    public final int mo5786() {
        return this.f14698.length;
    }
}
