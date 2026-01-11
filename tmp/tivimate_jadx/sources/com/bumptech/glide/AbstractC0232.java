package com.bumptech.glide;

import p087.AbstractC1746;
import p117.C1992;
import p117.InterfaceC1991;

/* renamed from: com.bumptech.glide.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0232 implements Cloneable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public InterfaceC1991 f1651 = C1992.f7851;

    public boolean equals(Object obj) {
        if (obj instanceof AbstractC0232) {
            return AbstractC1746.m4703(this.f1651, ((AbstractC0232) obj).f1651);
        }
        return false;
    }

    public int hashCode() {
        InterfaceC1991 interfaceC1991 = this.f1651;
        if (interfaceC1991 != null) {
            return interfaceC1991.hashCode();
        }
        return 0;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final AbstractC0232 clone() {
        try {
            return (AbstractC0232) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }
}
