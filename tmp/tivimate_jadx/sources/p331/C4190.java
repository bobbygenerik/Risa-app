package p331;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import p066.InterfaceC1616;
import p087.AbstractC1746;
import p117.InterfaceC1990;
import p399.C4751;
import p399.InterfaceC4748;

/* renamed from: ᴵﹶ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4190 implements InterfaceC1616 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public InterfaceC4748 f15594;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f15595;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Handler f15596;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final long f15597;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public Bitmap f15598;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f15599;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f15600;

    public C4190(Handler handler, int i, long j) {
        if (!AbstractC1746.m4697(Integer.MIN_VALUE, Integer.MIN_VALUE)) {
            throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648");
        }
        this.f15595 = Integer.MIN_VALUE;
        this.f15599 = Integer.MIN_VALUE;
        this.f15596 = handler;
        this.f15600 = i;
        this.f15597 = j;
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ʼˎ */
    public final void mo1185(Drawable drawable) {
        this.f15598 = null;
    }

    @Override // p279.InterfaceC3540
    /* renamed from: ʽ */
    public final void mo1159() {
    }

    @Override // p279.InterfaceC3540
    /* renamed from: ˆʾ */
    public final void mo1160() {
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ˈ */
    public final void mo1186(C4751 c4751) {
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ˑﹳ */
    public final void mo1187(C4751 c4751) {
        c4751.m9501(this.f15595, this.f15599);
    }

    @Override // p279.InterfaceC3540
    /* renamed from: ٴﹶ */
    public final void mo1163() {
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ᵎﹶ */
    public final void mo1188(Drawable drawable) {
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ᵔᵢ */
    public final InterfaceC4748 mo1189() {
        return this.f15594;
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ⁱˊ */
    public final void mo1190(Drawable drawable) {
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ﹳٴ */
    public final void mo1191(InterfaceC4748 interfaceC4748) {
        this.f15594 = interfaceC4748;
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ﾞᴵ */
    public final void mo1192(Object obj, InterfaceC1990 interfaceC1990) {
        this.f15598 = (Bitmap) obj;
        Handler handler = this.f15596;
        handler.sendMessageAtTime(handler.obtainMessage(1, this), this.f15597);
    }
}
