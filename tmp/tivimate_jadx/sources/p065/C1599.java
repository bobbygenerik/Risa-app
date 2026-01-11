package p065;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import p223.C3056;
import p264.AbstractC3441;

/* renamed from: ʾˋ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1599 {

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final SparseIntArray f6294;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f6295;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f6296;

    /* renamed from: ˈ, reason: contains not printable characters */
    public float f6297;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public float f6298;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f6299;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public String f6300;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f6301;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f6302;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public float f6303;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f6294 = sparseIntArray;
        sparseIntArray.append(3, 1);
        sparseIntArray.append(5, 2);
        sparseIntArray.append(9, 3);
        sparseIntArray.append(2, 4);
        sparseIntArray.append(1, 5);
        sparseIntArray.append(0, 6);
        sparseIntArray.append(4, 7);
        sparseIntArray.append(8, 8);
        sparseIntArray.append(7, 9);
        sparseIntArray.append(6, 10);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m4369(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC1597.f6292);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            switch (f6294.get(index)) {
                case 1:
                    this.f6298 = obtainStyledAttributes.getFloat(index, this.f6298);
                    break;
                case 2:
                    this.f6296 = obtainStyledAttributes.getInt(index, this.f6296);
                    break;
                case 3:
                    if (obtainStyledAttributes.peekValue(index).type == 3) {
                        obtainStyledAttributes.getString(index);
                        break;
                    } else {
                        String str = AbstractC3441.f13505[obtainStyledAttributes.getInteger(index, 0)];
                        break;
                    }
                case 4:
                    obtainStyledAttributes.getInt(index, 0);
                    break;
                case 5:
                    this.f6302 = C1601.m4375(obtainStyledAttributes, index, this.f6302);
                    break;
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    this.f6301 = obtainStyledAttributes.getInteger(index, this.f6301);
                    break;
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    this.f6297 = obtainStyledAttributes.getFloat(index, this.f6297);
                    break;
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    this.f6299 = obtainStyledAttributes.getInteger(index, this.f6299);
                    break;
                case 9:
                    this.f6303 = obtainStyledAttributes.getFloat(index, this.f6303);
                    break;
                case 10:
                    int i2 = obtainStyledAttributes.peekValue(index).type;
                    if (i2 == 1) {
                        this.f6295 = obtainStyledAttributes.getResourceId(index, -1);
                        break;
                    } else if (i2 == 3) {
                        String string = obtainStyledAttributes.getString(index);
                        this.f6300 = string;
                        if (string.indexOf("/") > 0) {
                            this.f6295 = obtainStyledAttributes.getResourceId(index, -1);
                            break;
                        } else {
                            break;
                        }
                    } else {
                        obtainStyledAttributes.getInteger(index, this.f6295);
                        break;
                    }
            }
        }
        obtainStyledAttributes.recycle();
    }
}
