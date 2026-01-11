package p433;

import java.util.Arrays;
import p372.AbstractC4519;
import ˈˆ.ﾞᴵ;

/* renamed from: ﹶˎ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5123 extends AbstractC4519 {

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public byte[] f19266;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public volatile boolean f19267;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public byte[] f19268;

    @Override // p364.InterfaceC4445
    /* renamed from: ʽ */
    public final void mo5106() {
        try {
            this.f16907.mo4684(this.f16905);
            int i = 0;
            int i2 = 0;
            while (i != -1 && !this.f19267) {
                byte[] bArr = this.f19266;
                if (bArr.length < i2 + 16384) {
                    this.f19266 = Arrays.copyOf(bArr, bArr.length + 16384);
                }
                i = this.f16907.read(this.f19266, i2, 16384);
                if (i != -1) {
                    i2 += i;
                }
            }
            if (!this.f19267) {
                this.f19268 = Arrays.copyOf(this.f19266, i2);
            }
            ﾞᴵ.ﾞᴵ(this.f16907);
        } catch (Throwable th) {
            ﾞᴵ.ﾞᴵ(this.f16907);
            throw th;
        }
    }

    @Override // p364.InterfaceC4445
    /* renamed from: ʽﹳ */
    public final void mo5107() {
        this.f19267 = true;
    }
}
