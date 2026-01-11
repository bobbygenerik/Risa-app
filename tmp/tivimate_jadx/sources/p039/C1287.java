package p039;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;
import p035.AbstractC1220;
import p321.AbstractC3949;

/* renamed from: ʽʽ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1287 extends ViewGroup.MarginLayoutParams {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f4969;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f4970;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f4971;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f4972;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public boolean f4973;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final Rect f4974;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f4975;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public View f4976;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int f4977;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public boolean f4978;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f4979;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f4980;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public AbstractC1291 f4981;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public View f4982;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f4983;

    public C1287() {
        super(-2, -2);
        this.f4980 = false;
        this.f4970 = 0;
        this.f4972 = 0;
        this.f4975 = -1;
        this.f4983 = -1;
        this.f4977 = 0;
        this.f4979 = 0;
        this.f4974 = new Rect();
    }

    public C1287(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        AbstractC1291 abstractC1291;
        this.f4980 = false;
        this.f4970 = 0;
        this.f4972 = 0;
        this.f4975 = -1;
        this.f4983 = -1;
        this.f4977 = 0;
        this.f4979 = 0;
        this.f4974 = new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC3949.f15254);
        this.f4970 = obtainStyledAttributes.getInteger(0, 0);
        this.f4983 = obtainStyledAttributes.getResourceId(1, -1);
        this.f4972 = obtainStyledAttributes.getInteger(2, 0);
        this.f4975 = obtainStyledAttributes.getInteger(6, -1);
        this.f4977 = obtainStyledAttributes.getInt(5, 0);
        this.f4979 = obtainStyledAttributes.getInt(4, 0);
        boolean hasValue = obtainStyledAttributes.hasValue(3);
        this.f4980 = hasValue;
        if (hasValue) {
            String string = obtainStyledAttributes.getString(3);
            String str = CoordinatorLayout.f274;
            if (TextUtils.isEmpty(string)) {
                abstractC1291 = null;
            } else {
                if (string.startsWith(".")) {
                    string = context.getPackageName() + string;
                } else if (string.indexOf(46) < 0) {
                    String str2 = CoordinatorLayout.f274;
                    if (!TextUtils.isEmpty(str2)) {
                        string = str2 + '.' + string;
                    }
                }
                try {
                    ThreadLocal threadLocal = CoordinatorLayout.f272;
                    Map map = (Map) threadLocal.get();
                    if (map == null) {
                        map = new HashMap();
                        threadLocal.set(map);
                    }
                    Constructor<?> constructor = (Constructor) map.get(string);
                    if (constructor == null) {
                        constructor = Class.forName(string, false, context.getClassLoader()).getConstructor(CoordinatorLayout.f276);
                        constructor.setAccessible(true);
                        map.put(string, constructor);
                    }
                    abstractC1291 = (AbstractC1291) constructor.newInstance(context, attributeSet);
                } catch (Exception e) {
                    throw new RuntimeException(AbstractC1220.m3771("Could not inflate Behavior subclass ", string), e);
                }
            }
            this.f4981 = abstractC1291;
        }
        obtainStyledAttributes.recycle();
        AbstractC1291 abstractC12912 = this.f4981;
        if (abstractC12912 != null) {
            abstractC12912.mo2344(this);
        }
    }

    public C1287(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f4980 = false;
        this.f4970 = 0;
        this.f4972 = 0;
        this.f4975 = -1;
        this.f4983 = -1;
        this.f4977 = 0;
        this.f4979 = 0;
        this.f4974 = new Rect();
    }

    public C1287(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f4980 = false;
        this.f4970 = 0;
        this.f4972 = 0;
        this.f4975 = -1;
        this.f4983 = -1;
        this.f4977 = 0;
        this.f4979 = 0;
        this.f4974 = new Rect();
    }

    public C1287(C1287 c1287) {
        super((ViewGroup.MarginLayoutParams) c1287);
        this.f4980 = false;
        this.f4970 = 0;
        this.f4972 = 0;
        this.f4975 = -1;
        this.f4983 = -1;
        this.f4977 = 0;
        this.f4979 = 0;
        this.f4974 = new Rect();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m3886(int i) {
        if (i == 0) {
            return this.f4973;
        }
        if (i != 1) {
            return false;
        }
        return this.f4978;
    }
}
