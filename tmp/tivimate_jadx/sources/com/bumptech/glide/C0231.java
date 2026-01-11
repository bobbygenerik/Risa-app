package com.bumptech.glide;

import com.google.android.gms.internal.measurement.C0344;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import p087.AbstractC1746;
import p279.InterfaceC3555;
import p399.InterfaceC4748;

/* renamed from: com.bumptech.glide.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0231 implements InterfaceC3555 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ ComponentCallbacks2C0236 f1649;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0344 f1650;

    public C0231(ComponentCallbacks2C0236 componentCallbacks2C0236, C0344 c0344) {
        this.f1649 = componentCallbacks2C0236;
        this.f1650 = c0344;
    }

    @Override // p279.InterfaceC3555
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo1142(boolean z) {
        if (z) {
            synchronized (this.f1649) {
                C0344 c0344 = this.f1650;
                ArrayList m4700 = AbstractC1746.m4700((Set) c0344.f1997);
                int size = m4700.size();
                int i = 0;
                while (i < size) {
                    Object obj = m4700.get(i);
                    i++;
                    InterfaceC4748 interfaceC4748 = (InterfaceC4748) obj;
                    if (!interfaceC4748.mo9488() && !interfaceC4748.mo9486()) {
                        interfaceC4748.clear();
                        if (c0344.f2000) {
                            ((HashSet) c0344.f1999).add(interfaceC4748);
                        } else {
                            interfaceC4748.mo9490();
                        }
                    }
                }
            }
        }
    }
}
