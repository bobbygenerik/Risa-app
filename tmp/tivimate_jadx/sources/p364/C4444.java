package p364;

import com.parse.ʼᐧ;
import java.util.ArrayList;
import java.util.Collections;
import p307.AbstractC3740;

/* renamed from: ᵔⁱ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4444 {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final ʼᐧ f16602 = new ʼᐧ(11);

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final ʼᐧ f16603 = new ʼᐧ(12);

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f16605;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f16606;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f16609;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4452[] f16607 = new C4452[5];

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList f16608 = new ArrayList();

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f16604 = -1;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final float m8986() {
        int i = this.f16604;
        ArrayList arrayList = this.f16608;
        if (i != 0) {
            Collections.sort(arrayList, f16603);
            this.f16604 = 0;
        }
        float f = 0.5f * this.f16606;
        int i2 = 0;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            C4452 c4452 = (C4452) arrayList.get(i3);
            i2 += c4452.f16671;
            if (i2 >= f) {
                return c4452.f16670;
            }
        }
        if (arrayList.isEmpty()) {
            return Float.NaN;
        }
        return ((C4452) AbstractC3740.m7939(1, arrayList)).f16670;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m8987(int i, float f) {
        C4452 c4452;
        int i2 = this.f16604;
        ArrayList arrayList = this.f16608;
        if (i2 != 1) {
            Collections.sort(arrayList, f16602);
            this.f16604 = 1;
        }
        int i3 = this.f16609;
        C4452[] c4452Arr = this.f16607;
        if (i3 > 0) {
            int i4 = i3 - 1;
            this.f16609 = i4;
            c4452 = c4452Arr[i4];
        } else {
            c4452 = new Object();
        }
        int i5 = this.f16605;
        this.f16605 = i5 + 1;
        c4452.f16672 = i5;
        c4452.f16671 = i;
        c4452.f16670 = f;
        arrayList.add(c4452);
        this.f16606 += i;
        while (true) {
            int i6 = this.f16606;
            if (i6 <= 2000) {
                return;
            }
            int i7 = i6 - 2000;
            C4452 c44522 = (C4452) arrayList.get(0);
            int i8 = c44522.f16671;
            if (i8 <= i7) {
                this.f16606 -= i8;
                arrayList.remove(0);
                int i9 = this.f16609;
                if (i9 < 5) {
                    this.f16609 = i9 + 1;
                    c4452Arr[i9] = c44522;
                }
            } else {
                c44522.f16671 = i8 - i7;
                this.f16606 -= i7;
            }
        }
    }
}
