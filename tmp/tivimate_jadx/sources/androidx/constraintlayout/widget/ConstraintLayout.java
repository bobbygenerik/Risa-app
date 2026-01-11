package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.leanback.widget.C0121;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParserException;
import p010.C0842;
import p065.AbstractC1597;
import p065.AbstractC1598;
import p065.AbstractC1606;
import p065.AbstractC1609;
import p065.C1600;
import p065.C1601;
import p065.C1603;
import p065.C1608;
import p065.C1613;
import p072.C1635;
import p072.C1636;
import p072.C1638;
import p223.C3056;
import ﹶﾞ.ⁱי;

/* loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public static C1608 f255;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C1636 f256;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final SparseArray f257;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public HashMap f258;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final C1603 f259;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f260;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public boolean f261;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f262;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public C1601 f263;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f264;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ArrayList f265;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f266;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public ⁱי f267;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public int f268;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public int f269;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final SparseArray f270;

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f257 = new SparseArray();
        this.f265 = new ArrayList(4);
        this.f256 = new C1636();
        this.f260 = 0;
        this.f266 = 0;
        this.f262 = Integer.MAX_VALUE;
        this.f264 = Integer.MAX_VALUE;
        this.f261 = true;
        this.f268 = 257;
        this.f263 = null;
        this.f267 = null;
        this.f269 = -1;
        this.f258 = new HashMap();
        this.f270 = new SparseArray();
        this.f259 = new C1603(this, this);
        m88(attributeSet, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f257 = new SparseArray();
        this.f265 = new ArrayList(4);
        this.f256 = new C1636();
        this.f260 = 0;
        this.f266 = 0;
        this.f262 = Integer.MAX_VALUE;
        this.f264 = Integer.MAX_VALUE;
        this.f261 = true;
        this.f268 = 257;
        this.f263 = null;
        this.f267 = null;
        this.f269 = -1;
        this.f258 = new HashMap();
        this.f270 = new SparseArray();
        this.f259 = new C1603(this, this);
        m88(attributeSet, i);
    }

    private int getPaddingWidth() {
        int max = Math.max(0, getPaddingRight()) + Math.max(0, getPaddingLeft());
        int max2 = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        return max2 > 0 ? max2 : max;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, ʾˋ.ᵔﹳ] */
    public static C1608 getSharedValues() {
        if (f255 == null) {
            ?? obj = new Object();
            new SparseIntArray();
            new HashMap();
            f255 = obj;
        }
        return f255;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.view.ViewGroup$MarginLayoutParams, ʾˋ.ˈ] */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static C1600 m87() {
        ?? marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        marginLayoutParams.f6366 = -1;
        marginLayoutParams.f6364 = -1;
        marginLayoutParams.f6311 = -1.0f;
        marginLayoutParams.f6320 = true;
        marginLayoutParams.f6337 = -1;
        marginLayoutParams.f6371 = -1;
        marginLayoutParams.f6357 = -1;
        marginLayoutParams.f6361 = -1;
        marginLayoutParams.f6309 = -1;
        marginLayoutParams.f6318 = -1;
        marginLayoutParams.f6346 = -1;
        marginLayoutParams.f6370 = -1;
        marginLayoutParams.f6325 = -1;
        marginLayoutParams.f6358 = -1;
        marginLayoutParams.f6326 = -1;
        marginLayoutParams.f6310 = -1;
        marginLayoutParams.f6362 = 0;
        marginLayoutParams.f6367 = 0.0f;
        marginLayoutParams.f6338 = -1;
        marginLayoutParams.f6333 = -1;
        marginLayoutParams.f6313 = -1;
        marginLayoutParams.f6305 = -1;
        marginLayoutParams.f6339 = Integer.MIN_VALUE;
        marginLayoutParams.f6315 = Integer.MIN_VALUE;
        marginLayoutParams.f6307 = Integer.MIN_VALUE;
        marginLayoutParams.f6363 = Integer.MIN_VALUE;
        marginLayoutParams.f6314 = Integer.MIN_VALUE;
        marginLayoutParams.f6350 = Integer.MIN_VALUE;
        marginLayoutParams.f6312 = Integer.MIN_VALUE;
        marginLayoutParams.f6323 = 0;
        marginLayoutParams.f6352 = 0.5f;
        marginLayoutParams.f6329 = 0.5f;
        marginLayoutParams.f6344 = null;
        marginLayoutParams.f6328 = -1.0f;
        marginLayoutParams.f6356 = -1.0f;
        marginLayoutParams.f6343 = 0;
        marginLayoutParams.f6354 = 0;
        marginLayoutParams.f6359 = 0;
        marginLayoutParams.f6319 = 0;
        marginLayoutParams.f6360 = 0;
        marginLayoutParams.f6321 = 0;
        marginLayoutParams.f6336 = 0;
        marginLayoutParams.f6332 = 0;
        marginLayoutParams.f6330 = 1.0f;
        marginLayoutParams.f6308 = 1.0f;
        marginLayoutParams.f6340 = -1;
        marginLayoutParams.f6365 = -1;
        marginLayoutParams.f6324 = -1;
        marginLayoutParams.f6351 = false;
        marginLayoutParams.f6327 = false;
        marginLayoutParams.f6316 = null;
        marginLayoutParams.f6317 = 0;
        marginLayoutParams.f6355 = true;
        marginLayoutParams.f6348 = true;
        marginLayoutParams.f6347 = false;
        marginLayoutParams.f6334 = false;
        marginLayoutParams.f6349 = false;
        marginLayoutParams.f6306 = -1;
        marginLayoutParams.f6331 = -1;
        marginLayoutParams.f6342 = -1;
        marginLayoutParams.f6322 = -1;
        marginLayoutParams.f6369 = Integer.MIN_VALUE;
        marginLayoutParams.f6368 = Integer.MIN_VALUE;
        marginLayoutParams.f6304 = 0.5f;
        marginLayoutParams.f6341 = new C1635();
        return marginLayoutParams;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C1600;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList arrayList = this.f265;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                ((AbstractC1609) arrayList.get(i)).getClass();
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int i3 = (int) ((parseInt / 1080.0f) * width);
                        int i4 = (int) ((parseInt2 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f = i3;
                        float f2 = i4;
                        float f3 = i3 + ((int) ((parseInt3 / 1080.0f) * width));
                        canvas.drawLine(f, f2, f3, f2, paint);
                        float parseInt4 = i4 + ((int) ((Integer.parseInt(split[3]) / 1920.0f) * height));
                        canvas.drawLine(f3, f2, f3, parseInt4, paint);
                        canvas.drawLine(f3, parseInt4, f, parseInt4, paint);
                        canvas.drawLine(f, parseInt4, f, f2, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f2, f3, parseInt4, paint);
                        canvas.drawLine(f, parseInt4, f3, f2, paint);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public final void forceLayout() {
        this.f261 = true;
        super.forceLayout();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return m87();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.view.ViewGroup$LayoutParams, android.view.ViewGroup$MarginLayoutParams, java.lang.Object, ʾˋ.ˈ] */
    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        ?? marginLayoutParams = new ViewGroup.MarginLayoutParams(context, attributeSet);
        marginLayoutParams.f6366 = -1;
        marginLayoutParams.f6364 = -1;
        marginLayoutParams.f6311 = -1.0f;
        marginLayoutParams.f6320 = true;
        marginLayoutParams.f6337 = -1;
        marginLayoutParams.f6371 = -1;
        marginLayoutParams.f6357 = -1;
        marginLayoutParams.f6361 = -1;
        marginLayoutParams.f6309 = -1;
        marginLayoutParams.f6318 = -1;
        marginLayoutParams.f6346 = -1;
        marginLayoutParams.f6370 = -1;
        marginLayoutParams.f6325 = -1;
        marginLayoutParams.f6358 = -1;
        marginLayoutParams.f6326 = -1;
        marginLayoutParams.f6310 = -1;
        marginLayoutParams.f6362 = 0;
        marginLayoutParams.f6367 = 0.0f;
        marginLayoutParams.f6338 = -1;
        marginLayoutParams.f6333 = -1;
        marginLayoutParams.f6313 = -1;
        marginLayoutParams.f6305 = -1;
        marginLayoutParams.f6339 = Integer.MIN_VALUE;
        marginLayoutParams.f6315 = Integer.MIN_VALUE;
        marginLayoutParams.f6307 = Integer.MIN_VALUE;
        marginLayoutParams.f6363 = Integer.MIN_VALUE;
        marginLayoutParams.f6314 = Integer.MIN_VALUE;
        marginLayoutParams.f6350 = Integer.MIN_VALUE;
        marginLayoutParams.f6312 = Integer.MIN_VALUE;
        marginLayoutParams.f6323 = 0;
        marginLayoutParams.f6352 = 0.5f;
        marginLayoutParams.f6329 = 0.5f;
        marginLayoutParams.f6344 = null;
        marginLayoutParams.f6328 = -1.0f;
        marginLayoutParams.f6356 = -1.0f;
        marginLayoutParams.f6343 = 0;
        marginLayoutParams.f6354 = 0;
        marginLayoutParams.f6359 = 0;
        marginLayoutParams.f6319 = 0;
        marginLayoutParams.f6360 = 0;
        marginLayoutParams.f6321 = 0;
        marginLayoutParams.f6336 = 0;
        marginLayoutParams.f6332 = 0;
        marginLayoutParams.f6330 = 1.0f;
        marginLayoutParams.f6308 = 1.0f;
        marginLayoutParams.f6340 = -1;
        marginLayoutParams.f6365 = -1;
        marginLayoutParams.f6324 = -1;
        marginLayoutParams.f6351 = false;
        marginLayoutParams.f6327 = false;
        marginLayoutParams.f6316 = null;
        marginLayoutParams.f6317 = 0;
        marginLayoutParams.f6355 = true;
        marginLayoutParams.f6348 = true;
        marginLayoutParams.f6347 = false;
        marginLayoutParams.f6334 = false;
        marginLayoutParams.f6349 = false;
        marginLayoutParams.f6306 = -1;
        marginLayoutParams.f6331 = -1;
        marginLayoutParams.f6342 = -1;
        marginLayoutParams.f6322 = -1;
        marginLayoutParams.f6369 = Integer.MIN_VALUE;
        marginLayoutParams.f6368 = Integer.MIN_VALUE;
        marginLayoutParams.f6304 = 0.5f;
        marginLayoutParams.f6341 = new C1635();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC1597.f6290);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            int i2 = AbstractC1598.f6293.get(index);
            switch (i2) {
                case 1:
                    marginLayoutParams.f6324 = obtainStyledAttributes.getInt(index, marginLayoutParams.f6324);
                    break;
                case 2:
                    int resourceId = obtainStyledAttributes.getResourceId(index, marginLayoutParams.f6310);
                    marginLayoutParams.f6310 = resourceId;
                    if (resourceId == -1) {
                        marginLayoutParams.f6310 = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    marginLayoutParams.f6362 = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.f6362);
                    break;
                case 4:
                    float f = obtainStyledAttributes.getFloat(index, marginLayoutParams.f6367) % 360.0f;
                    marginLayoutParams.f6367 = f;
                    if (f < 0.0f) {
                        marginLayoutParams.f6367 = (360.0f - f) % 360.0f;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    marginLayoutParams.f6366 = obtainStyledAttributes.getDimensionPixelOffset(index, marginLayoutParams.f6366);
                    break;
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    marginLayoutParams.f6364 = obtainStyledAttributes.getDimensionPixelOffset(index, marginLayoutParams.f6364);
                    break;
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    marginLayoutParams.f6311 = obtainStyledAttributes.getFloat(index, marginLayoutParams.f6311);
                    break;
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.f6337);
                    marginLayoutParams.f6337 = resourceId2;
                    if (resourceId2 == -1) {
                        marginLayoutParams.f6337 = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    int resourceId3 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.f6371);
                    marginLayoutParams.f6371 = resourceId3;
                    if (resourceId3 == -1) {
                        marginLayoutParams.f6371 = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 10:
                    int resourceId4 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.f6357);
                    marginLayoutParams.f6357 = resourceId4;
                    if (resourceId4 == -1) {
                        marginLayoutParams.f6357 = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    int resourceId5 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.f6361);
                    marginLayoutParams.f6361 = resourceId5;
                    if (resourceId5 == -1) {
                        marginLayoutParams.f6361 = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    int resourceId6 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.f6309);
                    marginLayoutParams.f6309 = resourceId6;
                    if (resourceId6 == -1) {
                        marginLayoutParams.f6309 = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    int resourceId7 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.f6318);
                    marginLayoutParams.f6318 = resourceId7;
                    if (resourceId7 == -1) {
                        marginLayoutParams.f6318 = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    int resourceId8 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.f6346);
                    marginLayoutParams.f6346 = resourceId8;
                    if (resourceId8 == -1) {
                        marginLayoutParams.f6346 = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    int resourceId9 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.f6370);
                    marginLayoutParams.f6370 = resourceId9;
                    if (resourceId9 == -1) {
                        marginLayoutParams.f6370 = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    int resourceId10 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.f6325);
                    marginLayoutParams.f6325 = resourceId10;
                    if (resourceId10 == -1) {
                        marginLayoutParams.f6325 = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    int resourceId11 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.f6338);
                    marginLayoutParams.f6338 = resourceId11;
                    if (resourceId11 == -1) {
                        marginLayoutParams.f6338 = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 18:
                    int resourceId12 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.f6333);
                    marginLayoutParams.f6333 = resourceId12;
                    if (resourceId12 == -1) {
                        marginLayoutParams.f6333 = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 19:
                    int resourceId13 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.f6313);
                    marginLayoutParams.f6313 = resourceId13;
                    if (resourceId13 == -1) {
                        marginLayoutParams.f6313 = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 20:
                    int resourceId14 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.f6305);
                    marginLayoutParams.f6305 = resourceId14;
                    if (resourceId14 == -1) {
                        marginLayoutParams.f6305 = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 21:
                    marginLayoutParams.f6339 = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.f6339);
                    break;
                case 22:
                    marginLayoutParams.f6315 = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.f6315);
                    break;
                case 23:
                    marginLayoutParams.f6307 = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.f6307);
                    break;
                case 24:
                    marginLayoutParams.f6363 = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.f6363);
                    break;
                case 25:
                    marginLayoutParams.f6314 = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.f6314);
                    break;
                case 26:
                    marginLayoutParams.f6350 = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.f6350);
                    break;
                case 27:
                    marginLayoutParams.f6351 = obtainStyledAttributes.getBoolean(index, marginLayoutParams.f6351);
                    break;
                case 28:
                    marginLayoutParams.f6327 = obtainStyledAttributes.getBoolean(index, marginLayoutParams.f6327);
                    break;
                case 29:
                    marginLayoutParams.f6352 = obtainStyledAttributes.getFloat(index, marginLayoutParams.f6352);
                    break;
                case 30:
                    marginLayoutParams.f6329 = obtainStyledAttributes.getFloat(index, marginLayoutParams.f6329);
                    break;
                case 31:
                    int i3 = obtainStyledAttributes.getInt(index, 0);
                    marginLayoutParams.f6359 = i3;
                    if (i3 == 1) {
                        break;
                    } else {
                        break;
                    }
                case 32:
                    int i4 = obtainStyledAttributes.getInt(index, 0);
                    marginLayoutParams.f6319 = i4;
                    if (i4 == 1) {
                        break;
                    } else {
                        break;
                    }
                case 33:
                    try {
                        marginLayoutParams.f6360 = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.f6360);
                        break;
                    } catch (Exception unused) {
                        if (obtainStyledAttributes.getInt(index, marginLayoutParams.f6360) == -2) {
                            marginLayoutParams.f6360 = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 34:
                    try {
                        marginLayoutParams.f6336 = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.f6336);
                        break;
                    } catch (Exception unused2) {
                        if (obtainStyledAttributes.getInt(index, marginLayoutParams.f6336) == -2) {
                            marginLayoutParams.f6336 = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 35:
                    marginLayoutParams.f6330 = Math.max(0.0f, obtainStyledAttributes.getFloat(index, marginLayoutParams.f6330));
                    marginLayoutParams.f6359 = 2;
                    break;
                case 36:
                    try {
                        marginLayoutParams.f6321 = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.f6321);
                        break;
                    } catch (Exception unused3) {
                        if (obtainStyledAttributes.getInt(index, marginLayoutParams.f6321) == -2) {
                            marginLayoutParams.f6321 = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 37:
                    try {
                        marginLayoutParams.f6332 = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.f6332);
                        break;
                    } catch (Exception unused4) {
                        if (obtainStyledAttributes.getInt(index, marginLayoutParams.f6332) == -2) {
                            marginLayoutParams.f6332 = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 38:
                    marginLayoutParams.f6308 = Math.max(0.0f, obtainStyledAttributes.getFloat(index, marginLayoutParams.f6308));
                    marginLayoutParams.f6319 = 2;
                    break;
                default:
                    switch (i2) {
                        case 44:
                            C1601.m4374(marginLayoutParams, obtainStyledAttributes.getString(index));
                            break;
                        case 45:
                            marginLayoutParams.f6328 = obtainStyledAttributes.getFloat(index, marginLayoutParams.f6328);
                            break;
                        case 46:
                            marginLayoutParams.f6356 = obtainStyledAttributes.getFloat(index, marginLayoutParams.f6356);
                            break;
                        case 47:
                            marginLayoutParams.f6343 = obtainStyledAttributes.getInt(index, 0);
                            break;
                        case 48:
                            marginLayoutParams.f6354 = obtainStyledAttributes.getInt(index, 0);
                            break;
                        case 49:
                            marginLayoutParams.f6340 = obtainStyledAttributes.getDimensionPixelOffset(index, marginLayoutParams.f6340);
                            break;
                        case 50:
                            marginLayoutParams.f6365 = obtainStyledAttributes.getDimensionPixelOffset(index, marginLayoutParams.f6365);
                            break;
                        case 51:
                            marginLayoutParams.f6316 = obtainStyledAttributes.getString(index);
                            break;
                        case 52:
                            int resourceId15 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.f6358);
                            marginLayoutParams.f6358 = resourceId15;
                            if (resourceId15 == -1) {
                                marginLayoutParams.f6358 = obtainStyledAttributes.getInt(index, -1);
                                break;
                            } else {
                                break;
                            }
                        case 53:
                            int resourceId16 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.f6326);
                            marginLayoutParams.f6326 = resourceId16;
                            if (resourceId16 == -1) {
                                marginLayoutParams.f6326 = obtainStyledAttributes.getInt(index, -1);
                                break;
                            } else {
                                break;
                            }
                        case 54:
                            marginLayoutParams.f6323 = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.f6323);
                            break;
                        case 55:
                            marginLayoutParams.f6312 = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.f6312);
                            break;
                        default:
                            switch (i2) {
                                case 64:
                                    C1601.m4373(marginLayoutParams, obtainStyledAttributes, index, 0);
                                    break;
                                case 65:
                                    C1601.m4373(marginLayoutParams, obtainStyledAttributes, index, 1);
                                    break;
                                case 66:
                                    marginLayoutParams.f6317 = obtainStyledAttributes.getInt(index, marginLayoutParams.f6317);
                                    break;
                                case 67:
                                    marginLayoutParams.f6320 = obtainStyledAttributes.getBoolean(index, marginLayoutParams.f6320);
                                    break;
                            }
                    }
            }
        }
        obtainStyledAttributes.recycle();
        marginLayoutParams.m4370();
        return marginLayoutParams;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.view.ViewGroup$LayoutParams, android.view.ViewGroup$MarginLayoutParams, ʾˋ.ˈ] */
    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        ?? marginLayoutParams = new ViewGroup.MarginLayoutParams(layoutParams);
        marginLayoutParams.f6366 = -1;
        marginLayoutParams.f6364 = -1;
        marginLayoutParams.f6311 = -1.0f;
        marginLayoutParams.f6320 = true;
        marginLayoutParams.f6337 = -1;
        marginLayoutParams.f6371 = -1;
        marginLayoutParams.f6357 = -1;
        marginLayoutParams.f6361 = -1;
        marginLayoutParams.f6309 = -1;
        marginLayoutParams.f6318 = -1;
        marginLayoutParams.f6346 = -1;
        marginLayoutParams.f6370 = -1;
        marginLayoutParams.f6325 = -1;
        marginLayoutParams.f6358 = -1;
        marginLayoutParams.f6326 = -1;
        marginLayoutParams.f6310 = -1;
        marginLayoutParams.f6362 = 0;
        marginLayoutParams.f6367 = 0.0f;
        marginLayoutParams.f6338 = -1;
        marginLayoutParams.f6333 = -1;
        marginLayoutParams.f6313 = -1;
        marginLayoutParams.f6305 = -1;
        marginLayoutParams.f6339 = Integer.MIN_VALUE;
        marginLayoutParams.f6315 = Integer.MIN_VALUE;
        marginLayoutParams.f6307 = Integer.MIN_VALUE;
        marginLayoutParams.f6363 = Integer.MIN_VALUE;
        marginLayoutParams.f6314 = Integer.MIN_VALUE;
        marginLayoutParams.f6350 = Integer.MIN_VALUE;
        marginLayoutParams.f6312 = Integer.MIN_VALUE;
        marginLayoutParams.f6323 = 0;
        marginLayoutParams.f6352 = 0.5f;
        marginLayoutParams.f6329 = 0.5f;
        marginLayoutParams.f6344 = null;
        marginLayoutParams.f6328 = -1.0f;
        marginLayoutParams.f6356 = -1.0f;
        marginLayoutParams.f6343 = 0;
        marginLayoutParams.f6354 = 0;
        marginLayoutParams.f6359 = 0;
        marginLayoutParams.f6319 = 0;
        marginLayoutParams.f6360 = 0;
        marginLayoutParams.f6321 = 0;
        marginLayoutParams.f6336 = 0;
        marginLayoutParams.f6332 = 0;
        marginLayoutParams.f6330 = 1.0f;
        marginLayoutParams.f6308 = 1.0f;
        marginLayoutParams.f6340 = -1;
        marginLayoutParams.f6365 = -1;
        marginLayoutParams.f6324 = -1;
        marginLayoutParams.f6351 = false;
        marginLayoutParams.f6327 = false;
        marginLayoutParams.f6316 = null;
        marginLayoutParams.f6317 = 0;
        marginLayoutParams.f6355 = true;
        marginLayoutParams.f6348 = true;
        marginLayoutParams.f6347 = false;
        marginLayoutParams.f6334 = false;
        marginLayoutParams.f6349 = false;
        marginLayoutParams.f6306 = -1;
        marginLayoutParams.f6331 = -1;
        marginLayoutParams.f6342 = -1;
        marginLayoutParams.f6322 = -1;
        marginLayoutParams.f6369 = Integer.MIN_VALUE;
        marginLayoutParams.f6368 = Integer.MIN_VALUE;
        marginLayoutParams.f6304 = 0.5f;
        marginLayoutParams.f6341 = new C1635();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams;
            ((ViewGroup.MarginLayoutParams) marginLayoutParams).leftMargin = marginLayoutParams2.leftMargin;
            ((ViewGroup.MarginLayoutParams) marginLayoutParams).rightMargin = marginLayoutParams2.rightMargin;
            ((ViewGroup.MarginLayoutParams) marginLayoutParams).topMargin = marginLayoutParams2.topMargin;
            ((ViewGroup.MarginLayoutParams) marginLayoutParams).bottomMargin = marginLayoutParams2.bottomMargin;
            marginLayoutParams.setMarginStart(marginLayoutParams2.getMarginStart());
            marginLayoutParams.setMarginEnd(marginLayoutParams2.getMarginEnd());
        }
        if (!(layoutParams instanceof C1600)) {
            return marginLayoutParams;
        }
        C1600 c1600 = (C1600) layoutParams;
        marginLayoutParams.f6366 = c1600.f6366;
        marginLayoutParams.f6364 = c1600.f6364;
        marginLayoutParams.f6311 = c1600.f6311;
        marginLayoutParams.f6320 = c1600.f6320;
        marginLayoutParams.f6337 = c1600.f6337;
        marginLayoutParams.f6371 = c1600.f6371;
        marginLayoutParams.f6357 = c1600.f6357;
        marginLayoutParams.f6361 = c1600.f6361;
        marginLayoutParams.f6309 = c1600.f6309;
        marginLayoutParams.f6318 = c1600.f6318;
        marginLayoutParams.f6346 = c1600.f6346;
        marginLayoutParams.f6370 = c1600.f6370;
        marginLayoutParams.f6325 = c1600.f6325;
        marginLayoutParams.f6358 = c1600.f6358;
        marginLayoutParams.f6326 = c1600.f6326;
        marginLayoutParams.f6310 = c1600.f6310;
        marginLayoutParams.f6362 = c1600.f6362;
        marginLayoutParams.f6367 = c1600.f6367;
        marginLayoutParams.f6338 = c1600.f6338;
        marginLayoutParams.f6333 = c1600.f6333;
        marginLayoutParams.f6313 = c1600.f6313;
        marginLayoutParams.f6305 = c1600.f6305;
        marginLayoutParams.f6339 = c1600.f6339;
        marginLayoutParams.f6315 = c1600.f6315;
        marginLayoutParams.f6307 = c1600.f6307;
        marginLayoutParams.f6363 = c1600.f6363;
        marginLayoutParams.f6314 = c1600.f6314;
        marginLayoutParams.f6350 = c1600.f6350;
        marginLayoutParams.f6312 = c1600.f6312;
        marginLayoutParams.f6323 = c1600.f6323;
        marginLayoutParams.f6352 = c1600.f6352;
        marginLayoutParams.f6329 = c1600.f6329;
        marginLayoutParams.f6344 = c1600.f6344;
        marginLayoutParams.f6328 = c1600.f6328;
        marginLayoutParams.f6356 = c1600.f6356;
        marginLayoutParams.f6343 = c1600.f6343;
        marginLayoutParams.f6354 = c1600.f6354;
        marginLayoutParams.f6351 = c1600.f6351;
        marginLayoutParams.f6327 = c1600.f6327;
        marginLayoutParams.f6359 = c1600.f6359;
        marginLayoutParams.f6319 = c1600.f6319;
        marginLayoutParams.f6360 = c1600.f6360;
        marginLayoutParams.f6336 = c1600.f6336;
        marginLayoutParams.f6321 = c1600.f6321;
        marginLayoutParams.f6332 = c1600.f6332;
        marginLayoutParams.f6330 = c1600.f6330;
        marginLayoutParams.f6308 = c1600.f6308;
        marginLayoutParams.f6340 = c1600.f6340;
        marginLayoutParams.f6365 = c1600.f6365;
        marginLayoutParams.f6324 = c1600.f6324;
        marginLayoutParams.f6355 = c1600.f6355;
        marginLayoutParams.f6348 = c1600.f6348;
        marginLayoutParams.f6347 = c1600.f6347;
        marginLayoutParams.f6334 = c1600.f6334;
        marginLayoutParams.f6306 = c1600.f6306;
        marginLayoutParams.f6331 = c1600.f6331;
        marginLayoutParams.f6342 = c1600.f6342;
        marginLayoutParams.f6322 = c1600.f6322;
        marginLayoutParams.f6369 = c1600.f6369;
        marginLayoutParams.f6368 = c1600.f6368;
        marginLayoutParams.f6304 = c1600.f6304;
        marginLayoutParams.f6316 = c1600.f6316;
        marginLayoutParams.f6317 = c1600.f6317;
        marginLayoutParams.f6341 = c1600.f6341;
        return marginLayoutParams;
    }

    public int getMaxHeight() {
        return this.f264;
    }

    public int getMaxWidth() {
        return this.f262;
    }

    public int getMinHeight() {
        return this.f266;
    }

    public int getMinWidth() {
        return this.f260;
    }

    public int getOptimizationLevel() {
        return this.f256.f6589;
    }

    public String getSceneString() {
        int id;
        StringBuilder sb = new StringBuilder();
        C1636 c1636 = this.f256;
        if (c1636.f6523 == null) {
            int id2 = getId();
            if (id2 != -1) {
                c1636.f6523 = getContext().getResources().getResourceEntryName(id2);
            } else {
                c1636.f6523 = "parent";
            }
        }
        if (c1636.f6547 == null) {
            c1636.f6547 = c1636.f6523;
            String str = " setDebugName " + c1636.f6547;
        }
        ArrayList arrayList = c1636.f6580;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            C1635 c1635 = (C1635) obj;
            View view = c1635.f6511;
            if (view != null) {
                if (c1635.f6523 == null && (id = view.getId()) != -1) {
                    c1635.f6523 = getContext().getResources().getResourceEntryName(id);
                }
                if (c1635.f6547 == null) {
                    c1635.f6547 = c1635.f6523;
                    String str2 = " setDebugName " + c1635.f6547;
                }
            }
        }
        c1636.mo4463(sb);
        return sb.toString();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            C1600 c1600 = (C1600) childAt.getLayoutParams();
            C1635 c1635 = c1600.f6341;
            if (childAt.getVisibility() != 8 || c1600.f6334 || c1600.f6349 || isInEditMode) {
                int m4471 = c1635.m4471();
                int m4454 = c1635.m4454();
                childAt.layout(m4471, m4454, c1635.m4467() + m4471, c1635.m4457() + m4454);
            }
        }
        ArrayList arrayList = this.f265;
        int size = arrayList.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                ((AbstractC1609) arrayList.get(i6)).mo93();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:284:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0371  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x03be  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x03fd  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x0426  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x042e  */
    /* JADX WARN: Removed duplicated region for block: B:311:0x0408  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x0393  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x0353  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r35, int r36) {
        /*
            Method dump skipped, instructions count: 1566
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        C1635 m91 = m91(view);
        if ((view instanceof Guideline) && !(m91 instanceof C1638)) {
            C1600 c1600 = (C1600) view.getLayoutParams();
            C1638 c1638 = new C1638();
            c1600.f6341 = c1638;
            c1600.f6334 = true;
            c1638.m4483(c1600.f6324);
        }
        if (view instanceof AbstractC1609) {
            AbstractC1609 abstractC1609 = (AbstractC1609) view;
            abstractC1609.m4390();
            ((C1600) view.getLayoutParams()).f6349 = true;
            ArrayList arrayList = this.f265;
            if (!arrayList.contains(abstractC1609)) {
                arrayList.add(abstractC1609);
            }
        }
        this.f257.put(view.getId(), view);
        this.f261 = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.f257.remove(view.getId());
        C1635 m91 = m91(view);
        this.f256.f6580.remove(m91);
        m91.mo4439();
        this.f265.remove(view);
        this.f261 = true;
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.f261 = true;
        super.requestLayout();
    }

    public void setConstraintSet(C1601 c1601) {
        this.f263 = c1601;
    }

    @Override // android.view.View
    public void setId(int i) {
        int id = getId();
        SparseArray sparseArray = this.f257;
        sparseArray.remove(id);
        super.setId(i);
        sparseArray.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i == this.f264) {
            return;
        }
        this.f264 = i;
        requestLayout();
    }

    public void setMaxWidth(int i) {
        if (i == this.f262) {
            return;
        }
        this.f262 = i;
        requestLayout();
    }

    public void setMinHeight(int i) {
        if (i == this.f266) {
            return;
        }
        this.f266 = i;
        requestLayout();
    }

    public void setMinWidth(int i) {
        if (i == this.f260) {
            return;
        }
        this.f260 = i;
        requestLayout();
    }

    public void setOnConstraintsChanged(AbstractC1606 abstractC1606) {
        ⁱי r1 = this.f267;
        if (r1 != null) {
            r1.getClass();
        }
    }

    public void setOptimizationLevel(int i) {
        this.f268 = i;
        C1636 c1636 = this.f256;
        c1636.f6589 = i;
        C0842.f3582 = c1636.m4478(512);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m88(AttributeSet attributeSet, int i) {
        C1636 c1636 = this.f256;
        c1636.f6511 = this;
        C1603 c1603 = this.f259;
        c1636.f6586 = c1603;
        c1636.f6587.f4025 = c1603;
        this.f257.put(getId(), this);
        this.f263 = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, AbstractC1597.f6290, i, 0);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == 16) {
                    this.f260 = obtainStyledAttributes.getDimensionPixelOffset(index, this.f260);
                } else if (index == 17) {
                    this.f266 = obtainStyledAttributes.getDimensionPixelOffset(index, this.f266);
                } else if (index == 14) {
                    this.f262 = obtainStyledAttributes.getDimensionPixelOffset(index, this.f262);
                } else if (index == 15) {
                    this.f264 = obtainStyledAttributes.getDimensionPixelOffset(index, this.f264);
                } else if (index == 113) {
                    this.f268 = obtainStyledAttributes.getInt(index, this.f268);
                } else if (index == 56) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            m89(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.f267 = null;
                        }
                    }
                } else if (index == 34) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        C1601 c1601 = new C1601();
                        this.f263 = c1601;
                        c1601.m4376(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.f263 = null;
                    }
                    this.f269 = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        c1636.f6589 = this.f268;
        C0842.f3582 = c1636.m4478(512);
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m89(int i) {
        String str;
        Context context = getContext();
        ⁱי r0 = new ⁱי(13, false);
        r0.ᴵˊ = new SparseArray();
        r0.ʽʽ = new SparseArray();
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            C0121 c0121 = null;
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                r0.ᴵˊ(context, xml);
                                break;
                            } else {
                                break;
                            }
                        case 80204913:
                            if (name.equals("State")) {
                                C0121 c01212 = new C0121(context, xml);
                                ((SparseArray) r0.ᴵˊ).put(c01212.f956, c01212);
                                c0121 = c01212;
                                break;
                            } else {
                                break;
                            }
                        case 1382829617:
                            str = "StateSet";
                            break;
                        case 1657696882:
                            str = "layoutDescription";
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                C1613 c1613 = new C1613(context, xml);
                                if (c0121 != null) {
                                    ((ArrayList) c0121.f955).add(c1613);
                                    break;
                                } else {
                                    break;
                                }
                            } else {
                                break;
                            }
                    }
                    name.equals(str);
                }
            }
        } catch (IOException e) {
            String str2 = "Error parsing resource: " + i;
        } catch (XmlPullParserException e2) {
            String str3 = "Error parsing resource: " + i;
        }
        this.f267 = r0;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x034c  */
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m90(p072.C1636 r29, int r30, int r31, int r32) {
        /*
            Method dump skipped, instructions count: 1762
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.m90(ʾᵎ.ˑﹳ, int, int, int):void");
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C1635 m91(View view) {
        if (view == this) {
            return this.f256;
        }
        if (view == null) {
            return null;
        }
        if (view.getLayoutParams() instanceof C1600) {
            return ((C1600) view.getLayoutParams()).f6341;
        }
        view.setLayoutParams(generateLayoutParams(view.getLayoutParams()));
        if (view.getLayoutParams() instanceof C1600) {
            return ((C1600) view.getLayoutParams()).f6341;
        }
        return null;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m92(C1635 c1635, C1600 c1600, SparseArray sparseArray, int i, int i2) {
        View view = (View) this.f257.get(i);
        C1635 c16352 = (C1635) sparseArray.get(i);
        if (c16352 == null || view == null || !(view.getLayoutParams() instanceof C1600)) {
            return;
        }
        c1600.f6347 = true;
        if (i2 == 6) {
            C1600 c16002 = (C1600) view.getLayoutParams();
            c16002.f6347 = true;
            c16002.f6341.f6557 = true;
        }
        c1635.mo4437(6).m4424(c16352.mo4437(i2), c1600.f6323, c1600.f6312, true);
        c1635.f6557 = true;
        c1635.mo4437(3).m4418();
        c1635.mo4437(5).m4418();
    }
}
