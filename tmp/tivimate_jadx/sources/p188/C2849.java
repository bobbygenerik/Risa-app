package p188;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.Xml;
import ar.tvplayer.tv.R;
import j$.util.Objects;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import p170.C2617;
import p259.AbstractC3399;

/* renamed from: ˋⁱ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2849 implements InterfaceC2869 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int[][] f10699;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C2862[] f10700;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C2865 f10701;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C2865 f10702;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C2865 f10703;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2862 f10704;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f10705;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C2865 f10706;

    public C2849(C2617 c2617) {
        this.f10705 = c2617.f9918;
        this.f10704 = (C2862) c2617.f9913;
        this.f10699 = (int[][]) c2617.f9914;
        this.f10700 = (C2862[]) c2617.f9915;
        this.f10701 = (C2865) c2617.f9920;
        this.f10706 = (C2865) c2617.f9916;
        this.f10702 = (C2865) c2617.f9917;
        this.f10703 = (C2865) c2617.f9912;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static C2849 m6344(Context context, TypedArray typedArray, int i) {
        XmlResourceParser xml;
        AttributeSet asAttributeSet;
        int next;
        int resourceId = typedArray.getResourceId(i, 0);
        if (resourceId == 0 || !Objects.equals(context.getResources().getResourceTypeName(resourceId), "xml")) {
            return null;
        }
        C2617 c2617 = new C2617(1);
        c2617.m5873();
        try {
            xml = context.getResources().getXml(resourceId);
            try {
                asAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
            } catch (Throwable th) {
                if (xml != null) {
                    try {
                        xml.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Resources.NotFoundException | IOException | XmlPullParserException unused) {
            c2617.m5873();
        }
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        if (xml.getName().equals("selector")) {
            m6345(c2617, context, xml, asAttributeSet, context.getTheme());
        }
        xml.close();
        if (c2617.f9918 == 0) {
            return null;
        }
        return new C2849(c2617);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m6345(C2617 c2617, Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
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
                int[] iArr = AbstractC3399.f13287;
                TypedArray obtainAttributes = theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
                C2862 m6356 = C2862.m6363(context, obtainAttributes.getResourceId(0, 0), obtainAttributes.getResourceId(1, 0), new C2867(0)).m6356();
                obtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr2 = new int[attributeCount];
                int i = 0;
                for (int i2 = 0; i2 < attributeCount; i2++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i2);
                    if (attributeNameResource != R.attr.21g && attributeNameResource != R.attr.4ph) {
                        int i3 = i + 1;
                        if (!attributeSet.getAttributeBooleanValue(i2, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr2[i] = attributeNameResource;
                        i = i3;
                    }
                }
                c2617.m5876(StateSet.trimStateSet(iArr2, i), m6356);
            }
        }
    }

    @Override // p188.InterfaceC2869
    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2862 mo6346(int[] iArr) {
        int i;
        int i2;
        int[][] iArr2;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = -1;
            i2 = this.f10705;
            iArr2 = this.f10699;
            if (i4 >= i2) {
                i4 = -1;
                break;
            }
            if (StateSet.stateSetMatches(iArr2[i4], iArr)) {
                break;
            }
            i4++;
        }
        if (i4 < 0) {
            int[] iArr3 = StateSet.WILD_CARD;
            while (true) {
                if (i3 >= i2) {
                    break;
                }
                if (StateSet.stateSetMatches(iArr2[i3], iArr3)) {
                    i = i3;
                    break;
                }
                i3++;
            }
            i4 = i;
        }
        C2862[] c2862Arr = this.f10700;
        C2865 c2865 = this.f10703;
        C2865 c28652 = this.f10702;
        C2865 c28653 = this.f10706;
        C2865 c28654 = this.f10701;
        if (c28654 == null && c28653 == null && c28652 == null && c2865 == null) {
            return c2862Arr[i4];
        }
        C2853 m6366 = c2862Arr[i4].m6366();
        if (c28654 != null) {
            m6366.f10719 = c28654.m6370(iArr);
        }
        if (c28653 != null) {
            m6366.f10726 = c28653.m6370(iArr);
        }
        if (c28652 != null) {
            m6366.f10722 = c28652.m6370(iArr);
        }
        if (c2865 != null) {
            m6366.f10721 = c2865.m6370(iArr);
        }
        return m6366.m6356();
    }

    @Override // p188.InterfaceC2869
    /* renamed from: ˈ, reason: contains not printable characters */
    public final C2862 mo6347() {
        return m6349();
    }

    @Override // p188.InterfaceC2869
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean mo6348() {
        C2865 c2865;
        C2865 c28652;
        C2865 c28653;
        C2865 c28654;
        return this.f10705 > 1 || ((c2865 = this.f10701) != null && c2865.f10776 > 1) || (((c28652 = this.f10706) != null && c28652.f10776 > 1) || (((c28653 = this.f10702) != null && c28653.f10776 > 1) || ((c28654 = this.f10703) != null && c28654.f10776 > 1)));
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C2862 m6349() {
        C2862 c2862 = this.f10704;
        C2865 c2865 = this.f10703;
        C2865 c28652 = this.f10702;
        C2865 c28653 = this.f10706;
        C2865 c28654 = this.f10701;
        if (c28654 == null && c28653 == null && c28652 == null && c2865 == null) {
            return c2862;
        }
        C2853 m6366 = c2862.m6366();
        if (c28654 != null) {
            m6366.f10719 = c28654.f10775;
        }
        if (c28653 != null) {
            m6366.f10726 = c28653.f10775;
        }
        if (c28652 != null) {
            m6366.f10722 = c28652.f10775;
        }
        if (c2865 != null) {
            m6366.f10721 = c2865.f10775;
        }
        return m6366.m6356();
    }

    @Override // p188.InterfaceC2869
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2862 mo6350(float f) {
        return m6349().mo6350(f);
    }

    @Override // p188.InterfaceC2869
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2862 mo6351(C2851 c2851) {
        return m6349().mo6351(c2851);
    }
}
