package com.google.crypto.tink.shaded.protobuf;

import android.support.v4.media.session.AbstractC0001;
import com.google.android.gms.internal.measurement.C0317;
import p137.AbstractC2305;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ˈʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0709 implements InterfaceC0711 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C0698 f2995;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AbstractC0714 f2996;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC0749 f2997;

    public C0709(AbstractC0714 abstractC0714, C0698 c0698, AbstractC0749 abstractC0749) {
        this.f2996 = abstractC0714;
        c0698.getClass();
        this.f2995 = c0698;
        this.f2997 = abstractC0749;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0711
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void mo2514(Object obj, C0729 c0729) {
        this.f2995.getClass();
        AbstractC0001.m3(obj);
        throw null;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0711
    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean mo2515(Object obj) {
        this.f2995.getClass();
        AbstractC0001.m3(obj);
        throw null;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0711
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final int mo2516(AbstractC0725 abstractC0725) {
        ((C0705) this.f2996).getClass();
        return abstractC0725.unknownFields.hashCode();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0711
    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object mo2517() {
        AbstractC0749 abstractC0749 = this.f2997;
        return abstractC0749 instanceof AbstractC0725 ? ((AbstractC0725) abstractC0749).m2569() : abstractC0749.mo2567().m2482();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0711
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int mo2518(AbstractC0725 abstractC0725) {
        ((C0705) this.f2996).getClass();
        C0704 c0704 = abstractC0725.unknownFields;
        int i = c0704.f2982;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < c0704.f2985; i3++) {
            int i4 = c0704.f2984[i3] >>> 3;
            i2 += C0751.m2703(3, (AbstractC0744) c0704.f2981[i3]) + C0751.m2705(i4) + C0751.m2708(2) + (C0751.m2708(1) * 2);
        }
        c0704.f2982 = i2;
        return i2;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0711
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void mo2519(Object obj, C0730 c0730, C0713 c0713) {
        this.f2996.mo2496(obj);
        this.f2995.getClass();
        obj.getClass();
        throw new ClassCastException();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0711
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean mo2520(AbstractC0725 abstractC0725, AbstractC0725 abstractC07252) {
        C0705 c0705 = (C0705) this.f2996;
        c0705.getClass();
        C0704 c0704 = abstractC0725.unknownFields;
        c0705.getClass();
        return c0704.equals(abstractC07252.unknownFields);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0711
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo2521(Object obj) {
        ((C0705) this.f2996).getClass();
        C0704 c0704 = ((AbstractC0725) obj).unknownFields;
        if (c0704.f2983) {
            c0704.f2983 = false;
        }
        this.f2995.getClass();
        AbstractC0001.m3(obj);
        throw null;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0711
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo2522(Object obj, Object obj2) {
        AbstractC0735.m2639(this.f2996, obj, obj2);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0711
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void mo2523(Object obj, byte[] bArr, int i, int i2, C0317 c0317) {
        AbstractC0725 abstractC0725 = (AbstractC0725) obj;
        if (abstractC0725.unknownFields == C0704.f2980) {
            abstractC0725.unknownFields = C0704.m2491();
        }
        throw AbstractC2305.m5368(obj);
    }
}
