package p068;

import android.graphics.Bitmap;
import java.io.File;
import p080.InterfaceC1710;
import p087.AbstractC1746;
import p087.AbstractC1751;

/* renamed from: ʾˑ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1621 implements InterfaceC1710 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f6466 = 2;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f6467;

    public C1621(Bitmap bitmap) {
        this.f6467 = bitmap;
    }

    public C1621(File file) {
        AbstractC1751.m4711(file, "Argument must not be null");
        this.f6467 = file;
    }

    public C1621(byte[] bArr) {
        AbstractC1751.m4711(bArr, "Argument must not be null");
        this.f6467 = bArr;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    private final void m4400() {
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final void m4401() {
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    private final void m4402() {
    }

    @Override // p080.InterfaceC1710
    public final Object get() {
        switch (this.f6466) {
            case 0:
                return (File) this.f6467;
            case 1:
                return (byte[]) this.f6467;
            default:
                return (Bitmap) this.f6467;
        }
    }

    @Override // p080.InterfaceC1710
    /* renamed from: ʽ, reason: contains not printable characters */
    public final Class mo4403() {
        switch (this.f6466) {
            case 0:
                return ((File) this.f6467).getClass();
            case 1:
                return byte[].class;
            default:
                return Bitmap.class;
        }
    }

    @Override // p080.InterfaceC1710
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo4404() {
        int i = this.f6466;
    }

    @Override // p080.InterfaceC1710
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int mo4405() {
        switch (this.f6466) {
            case 0:
                return 1;
            case 1:
                return ((byte[]) this.f6467).length;
            default:
                return AbstractC1746.m4698((Bitmap) this.f6467);
        }
    }
}
