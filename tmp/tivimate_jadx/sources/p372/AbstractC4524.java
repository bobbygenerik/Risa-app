package p372;

import java.util.NoSuchElementException;

/* renamed from: ᵢˋ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4524 implements InterfaceC4518 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public long f16941;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final long f16942;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long f16943;

    public AbstractC4524(long j, long j2) {
        this.f16942 = j;
        this.f16943 = j2;
        this.f16941 = j - 1;
    }

    @Override // p372.InterfaceC4518
    public final boolean next() {
        long j = this.f16941 + 1;
        this.f16941 = j;
        return !(j > this.f16943);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m9099() {
        long j = this.f16941;
        if (j < this.f16942 || j > this.f16943) {
            throw new NoSuchElementException();
        }
    }
}
