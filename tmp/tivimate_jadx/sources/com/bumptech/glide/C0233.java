package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import java.util.List;
import p080.C1698;
import p255.C3359;
import p257.C3397;
import p319.C3934;
import p399.AbstractC4754;
import p399.C4755;
import ﹳי.ʽ;

/* renamed from: com.bumptech.glide.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0233 extends ContextWrapper {

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final C0239 f1652 = new AbstractC0232();

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final int f1653;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ᵎˉ.ⁱˊ f1654;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public C4755 f1655;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ˋⁱ.ﾞᴵ f1656;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final List f1657;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C1698 f1658;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final ʽ f1659;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3934 f1660;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3397 f1661;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C3359 f1662;

    public C0233(Context context, C3397 c3397, C0229 c0229, ᵎˉ.ⁱˊ r4, ˋⁱ.ﾞᴵ r5, C3359 c3359, List list, C1698 c1698, ʽ r9, int i) {
        super(context.getApplicationContext());
        this.f1661 = c3397;
        this.f1654 = r4;
        this.f1656 = r5;
        this.f1657 = list;
        this.f1662 = c3359;
        this.f1658 = c1698;
        this.f1659 = r9;
        this.f1653 = i;
        this.f1660 = new C3934(c0229);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C0237 m1144() {
        return (C0237) this.f1660.get();
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [ⁱⁱ.ﾞᴵ, ⁱⁱ.ﹳٴ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized C4755 m1145() {
        try {
            if (this.f1655 == null) {
                this.f1656.getClass();
                ?? abstractC4754 = new AbstractC4754();
                abstractC4754.f17967 = true;
                this.f1655 = abstractC4754;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f1655;
    }
}
