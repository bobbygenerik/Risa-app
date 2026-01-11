package androidx.leanback.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import p004.InterfaceC0799;
import p065.AbstractC1597;
import p065.C1601;
import p179.C2713;
import p223.C3056;
import p262.C3433;
import p266.C3461;
import p266.InterfaceC3452;
import p266.InterfaceC3462;
import p305.C3732;

/* renamed from: androidx.leanback.widget.יﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0121 implements InterfaceC0799, InterfaceC3452 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Object f955;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f956;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f957;

    public C0121(int i) {
        switch (i) {
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                this.f955 = new C0121[256];
                this.f956 = 0;
                this.f957 = 0;
                return;
            default:
                this.f955 = new C3433();
                this.f956 = 8000;
                this.f957 = 8000;
                return;
        }
    }

    public C0121(Context context, XmlResourceParser xmlResourceParser) {
        this.f955 = new ArrayList();
        this.f957 = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), AbstractC1597.f6289);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == 0) {
                this.f956 = obtainStyledAttributes.getResourceId(index, this.f956);
            } else if (index == 1) {
                int resourceId = obtainStyledAttributes.getResourceId(index, this.f957);
                this.f957 = resourceId;
                String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                context.getResources().getResourceName(resourceId);
                if ("layout".equals(resourceTypeName)) {
                    new C1601().m4377((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                }
            }
        }
        obtainStyledAttributes.recycle();
    }

    @Override // p004.InterfaceC0799
    /* renamed from: ʽ, reason: contains not printable characters */
    public int mo623() {
        int i = this.f956;
        return i == -1 ? ((C3732) this.f955).m7878() : i;
    }

    @Override // p266.InterfaceC3452
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public InterfaceC3462 mo624() {
        return new C3461(this.f956, this.f957, (C3433) this.f955);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public void m625() {
        int i;
        int i2 = this.f956;
        if (i2 != 2) {
            if (i2 != 3 && i2 != 1) {
                this.f955 = null;
                return;
            }
            C2713 c2713 = (C2713) this.f955;
            if (c2713 == null || c2713.m6089() != Integer.MAX_VALUE) {
                this.f955 = new C2713(Integer.MAX_VALUE);
                return;
            }
            return;
        }
        if (this.f957 <= 0) {
            throw new IllegalArgumentException();
        }
        C2713 c27132 = (C2713) this.f955;
        if (c27132 != null) {
            synchronized (((ˋⁱ.ﾞᴵ) c27132.f10317)) {
                i = c27132.f10318;
            }
            if (i == this.f957) {
                return;
            }
        }
        this.f955 = new C2713(this.f957);
    }

    @Override // p004.InterfaceC0799
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int mo626() {
        return this.f957;
    }

    @Override // p004.InterfaceC0799
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int mo627() {
        return this.f956;
    }
}
