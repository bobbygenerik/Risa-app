package com.google.crypto.tink.shaded.protobuf;

import android.support.v4.media.session.AbstractC0001;
import androidx.datastore.preferences.protobuf.C0018;
import java.util.Iterator;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0740 extends AbstractC0744 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final byte[] f3045;

    public C0740(byte[] bArr) {
        this.f3064 = 0;
        bArr.getClass();
        this.f3045 = bArr;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0744
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0744) || size() != ((AbstractC0744) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof C0740)) {
            return obj.equals(this);
        }
        C0740 c0740 = (C0740) obj;
        int i = this.f3064;
        int i2 = c0740.f3064;
        if (i != 0 && i2 != 0 && i != i2) {
            return false;
        }
        int size = size();
        if (size > c0740.size()) {
            throw new IllegalArgumentException("Length too large: " + size + size());
        }
        if (size > c0740.size()) {
            StringBuilder m16 = AbstractC0001.m16(size, "Ran off end of other: 0, ", ", ");
            m16.append(c0740.size());
            throw new IllegalArgumentException(m16.toString());
        }
        byte[] bArr = c0740.f3045;
        int mo2655 = mo2655() + size;
        int mo26552 = mo2655();
        int mo26553 = c0740.mo2655();
        while (mo26552 < mo2655) {
            if (this.f3045[mo26552] != bArr[mo26553]) {
                return false;
            }
            mo26552++;
            mo26553++;
        }
        return true;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new C0018(this);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0744
    public int size() {
        return this.f3045.length;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0744
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void mo2654(int i, byte[] bArr) {
        System.arraycopy(this.f3045, 0, bArr, 0, i);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int mo2655() {
        return 0;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public byte mo2656(int i) {
        return this.f3045[i];
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0744
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public byte mo2657(int i) {
        return this.f3045[i];
    }
}
