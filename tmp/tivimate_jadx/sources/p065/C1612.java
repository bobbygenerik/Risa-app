package p065;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import p223.C3056;

/* renamed from: ʾˋ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1612 {

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static final SparseIntArray f6424;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public float f6425;

    /* renamed from: ʽ, reason: contains not printable characters */
    public float f6426;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public float f6427;

    /* renamed from: ˈ, reason: contains not printable characters */
    public float f6428;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public float f6429;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public float f6430;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public float f6431;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public float f6432;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f6433;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public float f6434;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public float f6435;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public boolean f6436;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public float f6437;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f6424 = sparseIntArray;
        sparseIntArray.append(6, 1);
        sparseIntArray.append(7, 2);
        sparseIntArray.append(8, 3);
        sparseIntArray.append(4, 4);
        sparseIntArray.append(5, 5);
        sparseIntArray.append(0, 6);
        sparseIntArray.append(1, 7);
        sparseIntArray.append(2, 8);
        sparseIntArray.append(3, 9);
        sparseIntArray.append(9, 10);
        sparseIntArray.append(10, 11);
        sparseIntArray.append(11, 12);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m4396(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC1597.f6283);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            switch (f6424.get(index)) {
                case 1:
                    this.f6435 = obtainStyledAttributes.getFloat(index, this.f6435);
                    break;
                case 2:
                    this.f6434 = obtainStyledAttributes.getFloat(index, this.f6434);
                    break;
                case 3:
                    this.f6426 = obtainStyledAttributes.getFloat(index, this.f6426);
                    break;
                case 4:
                    this.f6428 = obtainStyledAttributes.getFloat(index, this.f6428);
                    break;
                case 5:
                    this.f6430 = obtainStyledAttributes.getFloat(index, this.f6430);
                    break;
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    this.f6437 = obtainStyledAttributes.getDimension(index, this.f6437);
                    break;
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    this.f6432 = obtainStyledAttributes.getDimension(index, this.f6432);
                    break;
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    this.f6425 = obtainStyledAttributes.getDimension(index, this.f6425);
                    break;
                case 9:
                    this.f6427 = obtainStyledAttributes.getDimension(index, this.f6427);
                    break;
                case 10:
                    this.f6431 = obtainStyledAttributes.getDimension(index, this.f6431);
                    break;
                case 11:
                    this.f6436 = true;
                    this.f6429 = obtainStyledAttributes.getDimension(index, this.f6429);
                    break;
                case 12:
                    this.f6433 = C1601.m4375(obtainStyledAttributes, index, this.f6433);
                    break;
            }
        }
        obtainStyledAttributes.recycle();
    }
}
