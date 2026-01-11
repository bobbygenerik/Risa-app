package p179;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import p430.AbstractC5096;

/* renamed from: ˋˋ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2676 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f10196;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f10197;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f10198;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int[] f10199;

    public C2676() {
        int highestOneBit = Integer.bitCount(8) != 1 ? Integer.highestOneBit(7) << 1 : 8;
        this.f10197 = highestOneBit - 1;
        this.f10199 = new int[highestOneBit];
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public void m6022(RecyclerView recyclerView, boolean z) {
        this.f10197 = 0;
        int[] iArr = this.f10199;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        AbstractC2669 abstractC2669 = recyclerView.f1521;
        if (recyclerView.f1474 == null || abstractC2669 == null || !abstractC2669.f10143) {
            return;
        }
        if (z) {
            if (!recyclerView.f1514.m3138()) {
                abstractC2669.mo483(recyclerView.f1474.mo611(), this);
            }
        } else if (!recyclerView.m960()) {
            abstractC2669.mo470(this.f10198, this.f10196, recyclerView.f1516, this);
        }
        int i = this.f10197;
        if (i > abstractC2669.f10145) {
            abstractC2669.f10145 = i;
            abstractC2669.f10150 = z;
            recyclerView.f1464.m5956();
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public int m6023(int i) {
        if (i < 0 || i >= m6024()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.f10199[this.f10197 & (this.f10198 + i)];
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int m6024() {
        return (this.f10196 - this.f10198) & this.f10197;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m6025(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("Pixel distance must be non-negative");
        }
        int i3 = this.f10197;
        int i4 = i3 * 2;
        int[] iArr = this.f10199;
        if (iArr == null) {
            int[] iArr2 = new int[4];
            this.f10199 = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i4 >= iArr.length) {
            int[] iArr3 = new int[i3 * 4];
            this.f10199 = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        }
        int[] iArr4 = this.f10199;
        iArr4[i4] = i;
        iArr4[i4 + 1] = i2;
        this.f10197++;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m6026(int i) {
        int[] iArr = this.f10199;
        int i2 = this.f10196;
        iArr[i2] = i;
        int i3 = this.f10197 & (i2 + 1);
        this.f10196 = i3;
        int i4 = this.f10198;
        if (i3 == i4) {
            int length = iArr.length;
            int i5 = length - i4;
            int i6 = length << 1;
            if (i6 < 0) {
                throw new RuntimeException("Max array capacity exceeded");
            }
            int[] iArr2 = new int[i6];
            AbstractC5096.m9998(0, i4, length, iArr, iArr2);
            AbstractC5096.m9998(i5, 0, this.f10198, this.f10199, iArr2);
            this.f10199 = iArr2;
            this.f10198 = 0;
            this.f10196 = length;
            this.f10197 = i6 - 1;
        }
    }
}
