package p136;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.SubMenu;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p021.AbstractC1031;
import p137.AbstractC2307;
import p350.AbstractC4295;
import p353.ActionProviderVisibilityListenerC4314;
import p353.MenuC4312;

/* renamed from: ˉʿ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2226 extends MenuInflater {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final Class[] f8745;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final Class[] f8746;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Context f8747;

    /* renamed from: ˈ, reason: contains not printable characters */
    public Object f8748;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object[] f8749;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object[] f8750;

    static {
        Class[] clsArr = {Context.class};
        f8745 = clsArr;
        f8746 = clsArr;
    }

    public C2226(Context context) {
        super(context);
        this.f8747 = context;
        Object[] objArr = {context};
        this.f8750 = objArr;
        this.f8749 = objArr;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static Object m5231(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? m5231(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i, Menu menu) {
        if (!(menu instanceof MenuC4312)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        boolean z = false;
        try {
            try {
                xmlResourceParser = this.f8747.getResources().getLayout(i);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
                if (menu instanceof MenuC4312) {
                    MenuC4312 menuC4312 = (MenuC4312) menu;
                    if (!menuC4312.f15952) {
                        menuC4312.m8727();
                        z = true;
                    }
                }
                m5232(xmlResourceParser, asAttributeSet, menu);
                if (z) {
                    ((MenuC4312) menu).m8720();
                }
                xmlResourceParser.close();
            } catch (IOException e) {
                throw new InflateException("Error inflating menu XML", e);
            } catch (XmlPullParserException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            }
        } catch (Throwable th) {
            if (z) {
                ((MenuC4312) menu).m8720();
            }
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5232(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) {
        int i;
        XmlPullParser xmlPullParser2;
        ColorStateList colorStateList;
        int resourceId;
        C2225 c2225 = new C2225(this, menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            i = 2;
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
                eventType = xmlPullParser.next();
            } else {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        boolean z = false;
        boolean z2 = false;
        String str = null;
        while (!z) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType != i) {
                if (eventType == 3) {
                    String name2 = xmlPullParser.getName();
                    if (z2 && name2.equals(str)) {
                        xmlPullParser2 = xmlPullParser;
                        z2 = false;
                        str = null;
                        eventType = xmlPullParser2.next();
                        i = 2;
                        z = z;
                        z2 = z2;
                    } else if (name2.equals("group")) {
                        c2225.f8740 = 0;
                        c2225.f8718 = 0;
                        c2225.f8724 = 0;
                        c2225.f8729 = 0;
                        c2225.f8744 = true;
                        c2225.f8735 = true;
                    } else if (name2.equals("item")) {
                        if (!c2225.f8737) {
                            ActionProviderVisibilityListenerC4314 actionProviderVisibilityListenerC4314 = c2225.f8739;
                            if (actionProviderVisibilityListenerC4314 == null || !actionProviderVisibilityListenerC4314.f16000.hasSubMenu()) {
                                c2225.f8737 = true;
                                c2225.m5229(c2225.f8741.add(c2225.f8740, c2225.f8716, c2225.f8723, c2225.f8732));
                            } else {
                                c2225.f8737 = true;
                                c2225.m5229(c2225.f8741.addSubMenu(c2225.f8740, c2225.f8716, c2225.f8723, c2225.f8732).getItem());
                            }
                        }
                    } else if (name2.equals("menu")) {
                        xmlPullParser2 = xmlPullParser;
                        z = true;
                    }
                }
                xmlPullParser2 = xmlPullParser;
                z = z;
            } else {
                if (!z2) {
                    String name3 = xmlPullParser.getName();
                    boolean equals = name3.equals("group");
                    Context context = this.f8747;
                    if (equals) {
                        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC4295.f15901);
                        c2225.f8740 = obtainStyledAttributes.getResourceId(1, 0);
                        c2225.f8718 = obtainStyledAttributes.getInt(3, 0);
                        c2225.f8724 = obtainStyledAttributes.getInt(4, 0);
                        c2225.f8729 = obtainStyledAttributes.getInt(5, 0);
                        c2225.f8744 = obtainStyledAttributes.getBoolean(2, true);
                        c2225.f8735 = obtainStyledAttributes.getBoolean(0, true);
                        obtainStyledAttributes.recycle();
                    } else {
                        if (name3.equals("item")) {
                            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, AbstractC4295.f15918);
                            c2225.f8716 = obtainStyledAttributes2.getResourceId(2, 0);
                            c2225.f8723 = (obtainStyledAttributes2.getInt(5, c2225.f8718) & (-65536)) | (obtainStyledAttributes2.getInt(6, c2225.f8724) & 65535);
                            c2225.f8732 = obtainStyledAttributes2.getText(7);
                            c2225.f8743 = obtainStyledAttributes2.getText(8);
                            c2225.f8726 = obtainStyledAttributes2.getResourceId(0, 0);
                            String string = obtainStyledAttributes2.getString(9);
                            c2225.f8736 = string == null ? (char) 0 : string.charAt(0);
                            c2225.f8727 = obtainStyledAttributes2.getInt(16, 4096);
                            String string2 = obtainStyledAttributes2.getString(10);
                            c2225.f8717 = string2 == null ? (char) 0 : string2.charAt(0);
                            c2225.f8738 = obtainStyledAttributes2.getInt(20, 4096);
                            if (obtainStyledAttributes2.hasValue(11)) {
                                c2225.f8742 = obtainStyledAttributes2.getBoolean(11, false) ? 1 : 0;
                            } else {
                                c2225.f8742 = c2225.f8729;
                            }
                            c2225.f8730 = obtainStyledAttributes2.getBoolean(3, false);
                            c2225.f8728 = obtainStyledAttributes2.getBoolean(4, c2225.f8744);
                            c2225.f8720 = obtainStyledAttributes2.getBoolean(1, c2225.f8735);
                            c2225.f8714 = obtainStyledAttributes2.getInt(21, -1);
                            c2225.f8715 = obtainStyledAttributes2.getString(12);
                            c2225.f8731 = obtainStyledAttributes2.getResourceId(13, 0);
                            c2225.f8722 = obtainStyledAttributes2.getString(15);
                            String string3 = obtainStyledAttributes2.getString(14);
                            boolean z3 = string3 != null;
                            if (z3 && c2225.f8731 == 0 && c2225.f8722 == null) {
                                c2225.f8739 = (ActionProviderVisibilityListenerC4314) c2225.m5230(string3, f8746, this.f8749);
                            } else {
                                if (z3) {
                                }
                                c2225.f8739 = null;
                            }
                            c2225.f8721 = obtainStyledAttributes2.getText(17);
                            c2225.f8733 = obtainStyledAttributes2.getText(22);
                            if (obtainStyledAttributes2.hasValue(19)) {
                                c2225.f8725 = AbstractC2307.m5386(obtainStyledAttributes2.getInt(19, -1), c2225.f8725);
                            } else {
                                c2225.f8725 = null;
                            }
                            if (obtainStyledAttributes2.hasValue(18)) {
                                if (!obtainStyledAttributes2.hasValue(18) || (resourceId = obtainStyledAttributes2.getResourceId(18, 0)) == 0 || (colorStateList = AbstractC1031.m3358(context, resourceId)) == null) {
                                    colorStateList = obtainStyledAttributes2.getColorStateList(18);
                                }
                                c2225.f8719 = colorStateList;
                            } else {
                                c2225.f8719 = null;
                            }
                            obtainStyledAttributes2.recycle();
                            c2225.f8737 = false;
                            xmlPullParser2 = xmlPullParser;
                        } else if (name3.equals("menu")) {
                            c2225.f8737 = true;
                            SubMenu addSubMenu = c2225.f8741.addSubMenu(c2225.f8740, c2225.f8716, c2225.f8723, c2225.f8732);
                            c2225.m5229(addSubMenu.getItem());
                            xmlPullParser2 = xmlPullParser;
                            m5232(xmlPullParser2, attributeSet, addSubMenu);
                        } else {
                            xmlPullParser2 = xmlPullParser;
                            str = name3;
                            z2 = true;
                        }
                        eventType = xmlPullParser2.next();
                        i = 2;
                        z = z;
                        z2 = z2;
                    }
                }
                xmlPullParser2 = xmlPullParser;
                z = z;
            }
            eventType = xmlPullParser2.next();
            i = 2;
            z = z;
            z2 = z2;
        }
    }
}
