package p035;

import android.graphics.Rect;
import android.view.View;
import p179.AbstractC2669;
import p179.C2701;
import p275.C3509;
import p275.InterfaceC3503;
import p417.InterfaceC4932;

/* renamed from: ʼﾞ.ᵎⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1237 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f4812;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f4813;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f4814;

    public AbstractC1237(int i, String str, String str2) {
        this.f4814 = i;
        this.f4813 = str;
        this.f4812 = str2;
    }

    public AbstractC1237(AbstractC2669 abstractC2669) {
        this.f4814 = Integer.MIN_VALUE;
        this.f4812 = new Rect();
        this.f4813 = abstractC2669;
    }

    public AbstractC1237(InterfaceC3503 interfaceC3503) {
        this.f4814 = 0;
        this.f4812 = new C3509();
        this.f4813 = interfaceC3503;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static AbstractC1237 m3817(AbstractC2669 abstractC2669, int i) {
        if (i == 0) {
            return new C2701(abstractC2669, 0);
        }
        if (i == 1) {
            return new C2701(abstractC2669, 1);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    /* renamed from: ʻٴ */
    public abstract C1218 mo3725(InterfaceC4932 interfaceC4932);

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public abstract int mo3818();

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public abstract int mo3819(View view);

    /* renamed from: ʽ */
    public abstract void mo3726(InterfaceC4932 interfaceC4932);

    /* renamed from: ʽﹳ */
    public abstract void mo3727(InterfaceC4932 interfaceC4932);

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public abstract int mo3820();

    /* renamed from: ˈ, reason: contains not printable characters */
    public abstract int mo3821(View view);

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public abstract int mo3822();

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public abstract int mo3823(View view);

    /* renamed from: ˏי */
    public abstract void mo3728(InterfaceC4932 interfaceC4932);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public abstract int mo3824(View view);

    /* renamed from: יـ */
    public abstract void mo3729(InterfaceC4932 interfaceC4932);

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public abstract int mo3825();

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public abstract int mo3826(View view);

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public abstract int mo3827();

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public abstract int mo3828();

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public abstract void mo3829(int i);

    /* renamed from: ﹳٴ */
    public abstract void mo3730(InterfaceC4932 interfaceC4932);

    /* renamed from: ﹳᐧ */
    public abstract void mo3731();

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public abstract int mo3830();

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public abstract int mo3831(View view);
}
