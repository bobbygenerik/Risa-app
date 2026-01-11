package p188;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.StateSet;
import ar.tvplayer.tv.R;
import p259.AbstractC3399;

/* renamed from: ˋⁱ.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2865 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int[][] f10773 = new int[10];

    /* renamed from: ˈ, reason: contains not printable characters */
    public InterfaceC2852[] f10774 = new InterfaceC2852[10];

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public InterfaceC2852 f10775;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f10776;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C2865 m6369(InterfaceC2852 interfaceC2852) {
        C2865 c2865 = new C2865();
        c2865.m6372(StateSet.WILD_CARD, interfaceC2852);
        return c2865;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC2852 m6370(int[] iArr) {
        int i;
        int[][] iArr2 = this.f10773;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = -1;
            if (i3 >= this.f10776) {
                i3 = -1;
                break;
            }
            if (StateSet.stateSetMatches(iArr2[i3], iArr)) {
                break;
            }
            i3++;
        }
        if (i3 < 0) {
            int[] iArr3 = StateSet.WILD_CARD;
            int[][] iArr4 = this.f10773;
            while (true) {
                if (i2 >= this.f10776) {
                    break;
                }
                if (StateSet.stateSetMatches(iArr4[i2], iArr3)) {
                    i = i2;
                    break;
                }
                i2++;
            }
            i3 = i;
        }
        return i3 < 0 ? this.f10775 : this.f10774[i3];
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m6371(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
        int depth = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1) {
                return;
            }
            int depth2 = xmlResourceParser.getDepth();
            if (depth2 < depth && next == 3) {
                return;
            }
            if (next == 2 && depth2 <= depth && xmlResourceParser.getName().equals("item")) {
                Resources resources = context.getResources();
                int[] iArr = AbstractC3399.f13296;
                TypedArray obtainAttributes = theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
                InterfaceC2852 m6362 = C2862.m6362(obtainAttributes, 5, new C2867(0.0f));
                obtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr2 = new int[attributeCount];
                int i = 0;
                for (int i2 = 0; i2 < attributeCount; i2++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i2);
                    if (attributeNameResource != R.attr.5bo) {
                        int i3 = i + 1;
                        if (!attributeSet.getAttributeBooleanValue(i2, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr2[i] = attributeNameResource;
                        i = i3;
                    }
                }
                m6372(StateSet.trimStateSet(iArr2, i), m6362);
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6372(int[] iArr, InterfaceC2852 interfaceC2852) {
        int i = this.f10776;
        if (i == 0 || iArr.length == 0) {
            this.f10775 = interfaceC2852;
        }
        int[][] iArr2 = this.f10773;
        if (i >= iArr2.length) {
            int i2 = i + 10;
            int[][] iArr3 = new int[i2];
            System.arraycopy(iArr2, 0, iArr3, 0, i);
            this.f10773 = iArr3;
            InterfaceC2852[] interfaceC2852Arr = new InterfaceC2852[i2];
            System.arraycopy(this.f10774, 0, interfaceC2852Arr, 0, i);
            this.f10774 = interfaceC2852Arr;
        }
        int[][] iArr4 = this.f10773;
        int i3 = this.f10776;
        iArr4[i3] = iArr;
        this.f10774[i3] = interfaceC2852;
        this.f10776 = i3 + 1;
    }
}
