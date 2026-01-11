package p065;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;
import p010.AbstractC0844;
import p035.AbstractC1220;
import p137.AbstractC2305;
import p223.C3056;
import p264.AbstractC3441;
import p374.AbstractC4533;

/* renamed from: ʾˋ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1601 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final int[] f6372 = {0, 4, 8};

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final SparseIntArray f6373;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final SparseIntArray f6374;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final HashMap f6377 = new HashMap();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean f6376 = true;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final HashMap f6375 = new HashMap();

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f6373 = sparseIntArray;
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f6374 = sparseIntArray2;
        sparseIntArray.append(82, 25);
        sparseIntArray.append(83, 26);
        sparseIntArray.append(85, 29);
        sparseIntArray.append(86, 30);
        sparseIntArray.append(92, 36);
        sparseIntArray.append(91, 35);
        sparseIntArray.append(63, 4);
        sparseIntArray.append(62, 3);
        sparseIntArray.append(58, 1);
        sparseIntArray.append(60, 91);
        sparseIntArray.append(59, 92);
        sparseIntArray.append(101, 6);
        sparseIntArray.append(102, 7);
        sparseIntArray.append(70, 17);
        sparseIntArray.append(71, 18);
        sparseIntArray.append(72, 19);
        sparseIntArray.append(54, 99);
        sparseIntArray.append(0, 27);
        sparseIntArray.append(87, 32);
        sparseIntArray.append(88, 33);
        sparseIntArray.append(69, 10);
        sparseIntArray.append(68, 9);
        sparseIntArray.append(106, 13);
        sparseIntArray.append(109, 16);
        sparseIntArray.append(107, 14);
        sparseIntArray.append(104, 11);
        sparseIntArray.append(108, 15);
        sparseIntArray.append(105, 12);
        sparseIntArray.append(95, 40);
        sparseIntArray.append(80, 39);
        sparseIntArray.append(79, 41);
        sparseIntArray.append(94, 42);
        sparseIntArray.append(78, 20);
        sparseIntArray.append(93, 37);
        sparseIntArray.append(67, 5);
        sparseIntArray.append(81, 87);
        sparseIntArray.append(90, 87);
        sparseIntArray.append(84, 87);
        sparseIntArray.append(61, 87);
        sparseIntArray.append(57, 87);
        sparseIntArray.append(5, 24);
        sparseIntArray.append(7, 28);
        sparseIntArray.append(23, 31);
        sparseIntArray.append(24, 8);
        sparseIntArray.append(6, 34);
        sparseIntArray.append(8, 2);
        sparseIntArray.append(3, 23);
        sparseIntArray.append(4, 21);
        sparseIntArray.append(96, 95);
        sparseIntArray.append(73, 96);
        sparseIntArray.append(2, 22);
        sparseIntArray.append(13, 43);
        sparseIntArray.append(26, 44);
        sparseIntArray.append(21, 45);
        sparseIntArray.append(22, 46);
        sparseIntArray.append(20, 60);
        sparseIntArray.append(18, 47);
        sparseIntArray.append(19, 48);
        sparseIntArray.append(14, 49);
        sparseIntArray.append(15, 50);
        sparseIntArray.append(16, 51);
        sparseIntArray.append(17, 52);
        sparseIntArray.append(25, 53);
        sparseIntArray.append(97, 54);
        sparseIntArray.append(74, 55);
        sparseIntArray.append(98, 56);
        sparseIntArray.append(75, 57);
        sparseIntArray.append(99, 58);
        sparseIntArray.append(76, 59);
        sparseIntArray.append(64, 61);
        sparseIntArray.append(66, 62);
        sparseIntArray.append(65, 63);
        sparseIntArray.append(28, 64);
        sparseIntArray.append(121, 65);
        sparseIntArray.append(35, 66);
        sparseIntArray.append(122, 67);
        sparseIntArray.append(113, 79);
        sparseIntArray.append(1, 38);
        sparseIntArray.append(112, 68);
        sparseIntArray.append(100, 69);
        sparseIntArray.append(77, 70);
        sparseIntArray.append(111, 97);
        sparseIntArray.append(32, 71);
        sparseIntArray.append(30, 72);
        sparseIntArray.append(31, 73);
        sparseIntArray.append(33, 74);
        sparseIntArray.append(29, 75);
        sparseIntArray.append(114, 76);
        sparseIntArray.append(89, 77);
        sparseIntArray.append(123, 78);
        sparseIntArray.append(56, 80);
        sparseIntArray.append(55, 81);
        sparseIntArray.append(116, 82);
        sparseIntArray.append(120, 83);
        sparseIntArray.append(119, 84);
        sparseIntArray.append(118, 85);
        sparseIntArray.append(117, 86);
        sparseIntArray2.append(85, 6);
        sparseIntArray2.append(85, 7);
        sparseIntArray2.append(0, 27);
        sparseIntArray2.append(89, 13);
        sparseIntArray2.append(92, 16);
        sparseIntArray2.append(90, 14);
        sparseIntArray2.append(87, 11);
        sparseIntArray2.append(91, 15);
        sparseIntArray2.append(88, 12);
        sparseIntArray2.append(78, 40);
        sparseIntArray2.append(71, 39);
        sparseIntArray2.append(70, 41);
        sparseIntArray2.append(77, 42);
        sparseIntArray2.append(69, 20);
        sparseIntArray2.append(76, 37);
        sparseIntArray2.append(60, 5);
        sparseIntArray2.append(72, 87);
        sparseIntArray2.append(75, 87);
        sparseIntArray2.append(73, 87);
        sparseIntArray2.append(57, 87);
        sparseIntArray2.append(56, 87);
        sparseIntArray2.append(5, 24);
        sparseIntArray2.append(7, 28);
        sparseIntArray2.append(23, 31);
        sparseIntArray2.append(24, 8);
        sparseIntArray2.append(6, 34);
        sparseIntArray2.append(8, 2);
        sparseIntArray2.append(3, 23);
        sparseIntArray2.append(4, 21);
        sparseIntArray2.append(79, 95);
        sparseIntArray2.append(64, 96);
        sparseIntArray2.append(2, 22);
        sparseIntArray2.append(13, 43);
        sparseIntArray2.append(26, 44);
        sparseIntArray2.append(21, 45);
        sparseIntArray2.append(22, 46);
        sparseIntArray2.append(20, 60);
        sparseIntArray2.append(18, 47);
        sparseIntArray2.append(19, 48);
        sparseIntArray2.append(14, 49);
        sparseIntArray2.append(15, 50);
        sparseIntArray2.append(16, 51);
        sparseIntArray2.append(17, 52);
        sparseIntArray2.append(25, 53);
        sparseIntArray2.append(80, 54);
        sparseIntArray2.append(65, 55);
        sparseIntArray2.append(81, 56);
        sparseIntArray2.append(66, 57);
        sparseIntArray2.append(82, 58);
        sparseIntArray2.append(67, 59);
        sparseIntArray2.append(59, 62);
        sparseIntArray2.append(58, 63);
        sparseIntArray2.append(28, 64);
        sparseIntArray2.append(105, 65);
        sparseIntArray2.append(34, 66);
        sparseIntArray2.append(106, 67);
        sparseIntArray2.append(96, 79);
        sparseIntArray2.append(1, 38);
        sparseIntArray2.append(97, 98);
        sparseIntArray2.append(95, 68);
        sparseIntArray2.append(83, 69);
        sparseIntArray2.append(68, 70);
        sparseIntArray2.append(32, 71);
        sparseIntArray2.append(30, 72);
        sparseIntArray2.append(31, 73);
        sparseIntArray2.append(33, 74);
        sparseIntArray2.append(29, 75);
        sparseIntArray2.append(98, 76);
        sparseIntArray2.append(74, 77);
        sparseIntArray2.append(107, 78);
        sparseIntArray2.append(55, 80);
        sparseIntArray2.append(54, 81);
        sparseIntArray2.append(100, 82);
        sparseIntArray2.append(104, 83);
        sparseIntArray2.append(103, 84);
        sparseIntArray2.append(102, 85);
        sparseIntArray2.append(101, 86);
        sparseIntArray2.append(94, 97);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int[] m4371(Barrier barrier, String str) {
        int i;
        String[] split = str.split(",");
        Context context = barrier.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < split.length) {
            String trim = split[i2].trim();
            Object obj = null;
            try {
                i = AbstractC1602.class.getField(trim).getInt(null);
            } catch (Exception unused) {
                i = 0;
            }
            if (i == 0) {
                i = context.getResources().getIdentifier(trim, "id", context.getPackageName());
            }
            if (i == 0 && barrier.isInEditMode() && (barrier.getParent() instanceof ConstraintLayout)) {
                ConstraintLayout constraintLayout = (ConstraintLayout) barrier.getParent();
                if (AbstractC2305.m5366(trim)) {
                    HashMap hashMap = constraintLayout.f258;
                    if (hashMap != null && hashMap.containsKey(trim)) {
                        obj = constraintLayout.f258.get(trim);
                    }
                } else {
                    constraintLayout.getClass();
                }
                if (obj != null && (obj instanceof Integer)) {
                    i = ((Integer) obj).intValue();
                }
            }
            iArr[i3] = i;
            i2++;
            i3++;
        }
        return i3 != split.length ? Arrays.copyOf(iArr, i3) : iArr;
    }

    /* JADX WARN: Type inference failed for: r6v189, types: [ʾˋ.ᵎﹶ, java.lang.Object] */
    /* renamed from: ˈ, reason: contains not printable characters */
    public static C1607 m4372(Context context, AttributeSet attributeSet, boolean z) {
        int i;
        int i2;
        C1607 c1607 = new C1607();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z ? AbstractC1597.f6284 : AbstractC1597.f6291);
        C1604 c1604 = c1607.f6405;
        C1612 c1612 = c1607.f6404;
        C1599 c1599 = c1607.f6402;
        C1596 c1596 = c1607.f6403;
        int[] iArr = f6372;
        String[] strArr = AbstractC3441.f13505;
        SparseIntArray sparseIntArray = f6373;
        if (z) {
            ?? obj = new Object();
            obj.f6399 = new int[10];
            obj.f6398 = new int[10];
            obj.f6391 = 0;
            obj.f6393 = new int[10];
            obj.f6394 = new float[10];
            obj.f6401 = 0;
            obj.f6396 = new int[5];
            obj.f6397 = new String[5];
            obj.f6390 = 0;
            obj.f6392 = new int[4];
            obj.f6395 = new boolean[4];
            obj.f6400 = 0;
            c1599.getClass();
            c1596.getClass();
            c1612.getClass();
            int i3 = 0;
            for (int indexCount = obtainStyledAttributes.getIndexCount(); i3 < indexCount; indexCount = i2) {
                int index = obtainStyledAttributes.getIndex(i3);
                int i4 = i3;
                switch (f6374.get(index)) {
                    case 2:
                        i2 = indexCount;
                        obj.m4384(2, obtainStyledAttributes.getDimensionPixelSize(index, c1596.f6267));
                        continue;
                    case 3:
                    case 4:
                    case 9:
                    case 10:
                    case 25:
                    case 26:
                    case 29:
                    case 30:
                    case 32:
                    case 33:
                    case 35:
                    case 36:
                    case 61:
                    case 88:
                    case 89:
                    case 90:
                    case 91:
                    case 92:
                    default:
                        StringBuilder sb = new StringBuilder("Unknown attribute 0x");
                        i2 = indexCount;
                        sb.append(Integer.toHexString(index));
                        sb.append("   ");
                        sb.append(sparseIntArray.get(index));
                        sb.toString();
                        break;
                    case 5:
                        i2 = indexCount;
                        obj.m4382(5, obtainStyledAttributes.getString(index));
                        continue;
                    case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                        i2 = indexCount;
                        obj.m4384(6, obtainStyledAttributes.getDimensionPixelOffset(index, c1596.f6224));
                        break;
                    case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                        i2 = indexCount;
                        obj.m4384(7, obtainStyledAttributes.getDimensionPixelOffset(index, c1596.f6235));
                        break;
                    case C3056.BYTES_FIELD_NUMBER /* 8 */:
                        i2 = indexCount;
                        obj.m4384(8, obtainStyledAttributes.getDimensionPixelSize(index, c1596.f6254));
                        break;
                    case 11:
                        i2 = indexCount;
                        obj.m4384(11, obtainStyledAttributes.getDimensionPixelSize(index, c1596.f6248));
                        break;
                    case 12:
                        i2 = indexCount;
                        obj.m4384(12, obtainStyledAttributes.getDimensionPixelSize(index, c1596.f6244));
                        break;
                    case 13:
                        i2 = indexCount;
                        obj.m4384(13, obtainStyledAttributes.getDimensionPixelSize(index, c1596.f6231));
                        break;
                    case 14:
                        i2 = indexCount;
                        obj.m4384(14, obtainStyledAttributes.getDimensionPixelSize(index, c1596.f6233));
                        break;
                    case 15:
                        i2 = indexCount;
                        obj.m4384(15, obtainStyledAttributes.getDimensionPixelSize(index, c1596.f6242));
                        break;
                    case 16:
                        i2 = indexCount;
                        obj.m4384(16, obtainStyledAttributes.getDimensionPixelSize(index, c1596.f6271));
                        break;
                    case 17:
                        i2 = indexCount;
                        obj.m4384(17, obtainStyledAttributes.getDimensionPixelOffset(index, c1596.f6232));
                        break;
                    case 18:
                        i2 = indexCount;
                        obj.m4384(18, obtainStyledAttributes.getDimensionPixelOffset(index, c1596.f6249));
                        break;
                    case 19:
                        i2 = indexCount;
                        obj.m4385(19, obtainStyledAttributes.getFloat(index, c1596.f6282));
                        break;
                    case 20:
                        i2 = indexCount;
                        obj.m4385(20, obtainStyledAttributes.getFloat(index, c1596.f6251));
                        break;
                    case 21:
                        i2 = indexCount;
                        obj.m4384(21, obtainStyledAttributes.getLayoutDimension(index, c1596.f6223));
                        break;
                    case 22:
                        i2 = indexCount;
                        obj.m4384(22, iArr[obtainStyledAttributes.getInt(index, c1604.f6389)]);
                        break;
                    case 23:
                        i2 = indexCount;
                        obj.m4384(23, obtainStyledAttributes.getLayoutDimension(index, c1596.f6275));
                        break;
                    case 24:
                        i2 = indexCount;
                        obj.m4384(24, obtainStyledAttributes.getDimensionPixelSize(index, c1596.f6241));
                        break;
                    case 27:
                        i2 = indexCount;
                        obj.m4384(27, obtainStyledAttributes.getInt(index, c1596.f6263));
                        break;
                    case 28:
                        i2 = indexCount;
                        obj.m4384(28, obtainStyledAttributes.getDimensionPixelSize(index, c1596.f6255));
                        break;
                    case 31:
                        i2 = indexCount;
                        obj.m4384(31, obtainStyledAttributes.getDimensionPixelSize(index, c1596.f6265));
                        break;
                    case 34:
                        i2 = indexCount;
                        obj.m4384(34, obtainStyledAttributes.getDimensionPixelSize(index, c1596.f6240));
                        break;
                    case 37:
                        i2 = indexCount;
                        obj.m4385(37, obtainStyledAttributes.getFloat(index, c1596.f6227));
                        break;
                    case 38:
                        i2 = indexCount;
                        int resourceId = obtainStyledAttributes.getResourceId(index, c1607.f6406);
                        c1607.f6406 = resourceId;
                        obj.m4384(38, resourceId);
                        break;
                    case 39:
                        i2 = indexCount;
                        obj.m4385(39, obtainStyledAttributes.getFloat(index, c1596.f6276));
                        break;
                    case 40:
                        i2 = indexCount;
                        obj.m4385(40, obtainStyledAttributes.getFloat(index, c1596.f6252));
                        break;
                    case 41:
                        i2 = indexCount;
                        obj.m4384(41, obtainStyledAttributes.getInt(index, c1596.f6236));
                        break;
                    case 42:
                        i2 = indexCount;
                        obj.m4384(42, obtainStyledAttributes.getInt(index, c1596.f6262));
                        break;
                    case 43:
                        i2 = indexCount;
                        obj.m4385(43, obtainStyledAttributes.getFloat(index, c1604.f6386));
                        break;
                    case 44:
                        i2 = indexCount;
                        obj.m4383(44, true);
                        obj.m4385(44, obtainStyledAttributes.getDimension(index, c1612.f6429));
                        break;
                    case 45:
                        i2 = indexCount;
                        obj.m4385(45, obtainStyledAttributes.getFloat(index, c1612.f6434));
                        break;
                    case 46:
                        i2 = indexCount;
                        obj.m4385(46, obtainStyledAttributes.getFloat(index, c1612.f6426));
                        break;
                    case 47:
                        i2 = indexCount;
                        obj.m4385(47, obtainStyledAttributes.getFloat(index, c1612.f6428));
                        break;
                    case 48:
                        i2 = indexCount;
                        obj.m4385(48, obtainStyledAttributes.getFloat(index, c1612.f6430));
                        break;
                    case 49:
                        i2 = indexCount;
                        obj.m4385(49, obtainStyledAttributes.getDimension(index, c1612.f6437));
                        break;
                    case 50:
                        i2 = indexCount;
                        obj.m4385(50, obtainStyledAttributes.getDimension(index, c1612.f6432));
                        break;
                    case 51:
                        i2 = indexCount;
                        obj.m4385(51, obtainStyledAttributes.getDimension(index, c1612.f6425));
                        break;
                    case 52:
                        i2 = indexCount;
                        obj.m4385(52, obtainStyledAttributes.getDimension(index, c1612.f6427));
                        break;
                    case 53:
                        i2 = indexCount;
                        obj.m4385(53, obtainStyledAttributes.getDimension(index, c1612.f6431));
                        break;
                    case 54:
                        i2 = indexCount;
                        obj.m4384(54, obtainStyledAttributes.getInt(index, c1596.f6239));
                        break;
                    case 55:
                        i2 = indexCount;
                        obj.m4384(55, obtainStyledAttributes.getInt(index, c1596.f6228));
                        break;
                    case 56:
                        i2 = indexCount;
                        obj.m4384(56, obtainStyledAttributes.getDimensionPixelSize(index, c1596.f6229));
                        break;
                    case 57:
                        i2 = indexCount;
                        obj.m4384(57, obtainStyledAttributes.getDimensionPixelSize(index, c1596.f6266));
                        break;
                    case 58:
                        i2 = indexCount;
                        obj.m4384(58, obtainStyledAttributes.getDimensionPixelSize(index, c1596.f6259));
                        break;
                    case 59:
                        i2 = indexCount;
                        obj.m4384(59, obtainStyledAttributes.getDimensionPixelSize(index, c1596.f6258));
                        break;
                    case 60:
                        i2 = indexCount;
                        obj.m4385(60, obtainStyledAttributes.getFloat(index, c1612.f6435));
                        break;
                    case 62:
                        i2 = indexCount;
                        obj.m4384(62, obtainStyledAttributes.getDimensionPixelSize(index, c1596.f6226));
                        break;
                    case 63:
                        i2 = indexCount;
                        obj.m4385(63, obtainStyledAttributes.getFloat(index, c1596.f6261));
                        break;
                    case 64:
                        i2 = indexCount;
                        obj.m4384(64, m4375(obtainStyledAttributes, index, c1599.f6302));
                        break;
                    case 65:
                        i2 = indexCount;
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            obj.m4382(65, obtainStyledAttributes.getString(index));
                            break;
                        } else {
                            obj.m4382(65, strArr[obtainStyledAttributes.getInteger(index, 0)]);
                            break;
                        }
                    case 66:
                        i2 = indexCount;
                        obj.m4384(66, obtainStyledAttributes.getInt(index, 0));
                        break;
                    case 67:
                        i2 = indexCount;
                        obj.m4385(67, obtainStyledAttributes.getFloat(index, c1599.f6298));
                        break;
                    case 68:
                        i2 = indexCount;
                        obj.m4385(68, obtainStyledAttributes.getFloat(index, c1604.f6387));
                        break;
                    case 69:
                        i2 = indexCount;
                        obj.m4385(69, obtainStyledAttributes.getFloat(index, 1.0f));
                        break;
                    case 70:
                        i2 = indexCount;
                        obj.m4385(70, obtainStyledAttributes.getFloat(index, 1.0f));
                        break;
                    case 71:
                        i2 = indexCount;
                        break;
                    case 72:
                        i2 = indexCount;
                        obj.m4384(72, obtainStyledAttributes.getInt(index, c1596.f6218));
                        break;
                    case 73:
                        i2 = indexCount;
                        obj.m4384(73, obtainStyledAttributes.getDimensionPixelSize(index, c1596.f6243));
                        break;
                    case 74:
                        i2 = indexCount;
                        obj.m4382(74, obtainStyledAttributes.getString(index));
                        break;
                    case 75:
                        i2 = indexCount;
                        obj.m4383(75, obtainStyledAttributes.getBoolean(index, c1596.f6256));
                        break;
                    case 76:
                        i2 = indexCount;
                        obj.m4384(76, obtainStyledAttributes.getInt(index, c1599.f6296));
                        break;
                    case 77:
                        i2 = indexCount;
                        obj.m4382(77, obtainStyledAttributes.getString(index));
                        break;
                    case 78:
                        i2 = indexCount;
                        obj.m4384(78, obtainStyledAttributes.getInt(index, c1604.f6388));
                        break;
                    case 79:
                        i2 = indexCount;
                        obj.m4385(79, obtainStyledAttributes.getFloat(index, c1599.f6297));
                        break;
                    case 80:
                        i2 = indexCount;
                        obj.m4383(80, obtainStyledAttributes.getBoolean(index, c1596.f6216));
                        break;
                    case 81:
                        i2 = indexCount;
                        obj.m4383(81, obtainStyledAttributes.getBoolean(index, c1596.f6247));
                        break;
                    case 82:
                        i2 = indexCount;
                        obj.m4384(82, obtainStyledAttributes.getInteger(index, c1599.f6301));
                        break;
                    case 83:
                        i2 = indexCount;
                        obj.m4384(83, m4375(obtainStyledAttributes, index, c1612.f6433));
                        break;
                    case 84:
                        i2 = indexCount;
                        obj.m4384(84, obtainStyledAttributes.getInteger(index, c1599.f6299));
                        break;
                    case 85:
                        i2 = indexCount;
                        obj.m4385(85, obtainStyledAttributes.getFloat(index, c1599.f6303));
                        break;
                    case 86:
                        i2 = indexCount;
                        int i5 = obtainStyledAttributes.peekValue(index).type;
                        if (i5 == 1) {
                            int resourceId2 = obtainStyledAttributes.getResourceId(index, -1);
                            c1599.f6295 = resourceId2;
                            obj.m4384(89, resourceId2);
                            if (c1599.f6295 != -1) {
                                obj.m4384(88, -2);
                                break;
                            }
                        } else if (i5 == 3) {
                            String string = obtainStyledAttributes.getString(index);
                            c1599.f6300 = string;
                            obj.m4382(90, string);
                            if (c1599.f6300.indexOf("/") > 0) {
                                int resourceId3 = obtainStyledAttributes.getResourceId(index, -1);
                                c1599.f6295 = resourceId3;
                                obj.m4384(89, resourceId3);
                                obj.m4384(88, -2);
                                break;
                            } else {
                                obj.m4384(88, -1);
                                break;
                            }
                        } else {
                            obj.m4384(88, obtainStyledAttributes.getInteger(index, c1599.f6295));
                            break;
                        }
                        break;
                    case 87:
                        i2 = indexCount;
                        String str = "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index);
                        break;
                    case 93:
                        i2 = indexCount;
                        obj.m4384(93, obtainStyledAttributes.getDimensionPixelSize(index, c1596.f6270));
                        break;
                    case 94:
                        i2 = indexCount;
                        obj.m4384(94, obtainStyledAttributes.getDimensionPixelSize(index, c1596.f6220));
                        break;
                    case 95:
                        i2 = indexCount;
                        m4373(obj, obtainStyledAttributes, index, 0);
                        break;
                    case 96:
                        i2 = indexCount;
                        m4373(obj, obtainStyledAttributes, index, 1);
                        break;
                    case 97:
                        i2 = indexCount;
                        obj.m4384(97, obtainStyledAttributes.getInt(index, c1596.f6264));
                        break;
                    case 98:
                        i2 = indexCount;
                        int i6 = AbstractC4533.f16962;
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            c1607.f6406 = obtainStyledAttributes.getResourceId(index, c1607.f6406);
                            break;
                        }
                    case 99:
                        i2 = indexCount;
                        obj.m4383(99, obtainStyledAttributes.getBoolean(index, c1596.f6268));
                        break;
                }
                i3 = i4 + 1;
            }
        } else {
            int i7 = 0;
            for (int indexCount2 = obtainStyledAttributes.getIndexCount(); i7 < indexCount2; indexCount2 = i) {
                int index2 = obtainStyledAttributes.getIndex(i7);
                if (index2 != 1 && 23 != index2) {
                    if (24 != index2) {
                        c1599.getClass();
                        c1596.getClass();
                        c1612.getClass();
                    }
                }
                switch (sparseIntArray.get(index2)) {
                    case 1:
                        i = indexCount2;
                        c1596.f6222 = m4375(obtainStyledAttributes, index2, c1596.f6222);
                        continue;
                    case 2:
                        i = indexCount2;
                        c1596.f6267 = obtainStyledAttributes.getDimensionPixelSize(index2, c1596.f6267);
                        continue;
                    case 3:
                        i = indexCount2;
                        c1596.f6238 = m4375(obtainStyledAttributes, index2, c1596.f6238);
                        continue;
                    case 4:
                        i = indexCount2;
                        c1596.f6269 = m4375(obtainStyledAttributes, index2, c1596.f6269);
                        continue;
                    case 5:
                        i = indexCount2;
                        c1596.f6219 = obtainStyledAttributes.getString(index2);
                        continue;
                    case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                        i = indexCount2;
                        c1596.f6224 = obtainStyledAttributes.getDimensionPixelOffset(index2, c1596.f6224);
                        continue;
                    case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                        i = indexCount2;
                        c1596.f6235 = obtainStyledAttributes.getDimensionPixelOffset(index2, c1596.f6235);
                        continue;
                    case C3056.BYTES_FIELD_NUMBER /* 8 */:
                        i = indexCount2;
                        c1596.f6254 = obtainStyledAttributes.getDimensionPixelSize(index2, c1596.f6254);
                        continue;
                    case 9:
                        i = indexCount2;
                        c1596.f6217 = m4375(obtainStyledAttributes, index2, c1596.f6217);
                        continue;
                    case 10:
                        i = indexCount2;
                        c1596.f6225 = m4375(obtainStyledAttributes, index2, c1596.f6225);
                        continue;
                    case 11:
                        i = indexCount2;
                        c1596.f6248 = obtainStyledAttributes.getDimensionPixelSize(index2, c1596.f6248);
                        continue;
                    case 12:
                        i = indexCount2;
                        c1596.f6244 = obtainStyledAttributes.getDimensionPixelSize(index2, c1596.f6244);
                        continue;
                    case 13:
                        i = indexCount2;
                        c1596.f6231 = obtainStyledAttributes.getDimensionPixelSize(index2, c1596.f6231);
                        continue;
                    case 14:
                        i = indexCount2;
                        c1596.f6233 = obtainStyledAttributes.getDimensionPixelSize(index2, c1596.f6233);
                        continue;
                    case 15:
                        i = indexCount2;
                        c1596.f6242 = obtainStyledAttributes.getDimensionPixelSize(index2, c1596.f6242);
                        continue;
                    case 16:
                        i = indexCount2;
                        c1596.f6271 = obtainStyledAttributes.getDimensionPixelSize(index2, c1596.f6271);
                        continue;
                    case 17:
                        i = indexCount2;
                        c1596.f6232 = obtainStyledAttributes.getDimensionPixelOffset(index2, c1596.f6232);
                        continue;
                    case 18:
                        i = indexCount2;
                        c1596.f6249 = obtainStyledAttributes.getDimensionPixelOffset(index2, c1596.f6249);
                        continue;
                    case 19:
                        i = indexCount2;
                        c1596.f6282 = obtainStyledAttributes.getFloat(index2, c1596.f6282);
                        continue;
                    case 20:
                        i = indexCount2;
                        c1596.f6251 = obtainStyledAttributes.getFloat(index2, c1596.f6251);
                        continue;
                    case 21:
                        i = indexCount2;
                        c1596.f6223 = obtainStyledAttributes.getLayoutDimension(index2, c1596.f6223);
                        continue;
                    case 22:
                        i = indexCount2;
                        int i8 = obtainStyledAttributes.getInt(index2, c1604.f6389);
                        c1604.f6389 = i8;
                        c1604.f6389 = iArr[i8];
                        continue;
                    case 23:
                        i = indexCount2;
                        c1596.f6275 = obtainStyledAttributes.getLayoutDimension(index2, c1596.f6275);
                        continue;
                    case 24:
                        i = indexCount2;
                        c1596.f6241 = obtainStyledAttributes.getDimensionPixelSize(index2, c1596.f6241);
                        continue;
                    case 25:
                        i = indexCount2;
                        c1596.f6272 = m4375(obtainStyledAttributes, index2, c1596.f6272);
                        continue;
                    case 26:
                        i = indexCount2;
                        c1596.f6221 = m4375(obtainStyledAttributes, index2, c1596.f6221);
                        continue;
                    case 27:
                        i = indexCount2;
                        c1596.f6263 = obtainStyledAttributes.getInt(index2, c1596.f6263);
                        continue;
                    case 28:
                        i = indexCount2;
                        c1596.f6255 = obtainStyledAttributes.getDimensionPixelSize(index2, c1596.f6255);
                        continue;
                    case 29:
                        i = indexCount2;
                        c1596.f6230 = m4375(obtainStyledAttributes, index2, c1596.f6230);
                        continue;
                    case 30:
                        i = indexCount2;
                        c1596.f6257 = m4375(obtainStyledAttributes, index2, c1596.f6257);
                        continue;
                    case 31:
                        i = indexCount2;
                        c1596.f6265 = obtainStyledAttributes.getDimensionPixelSize(index2, c1596.f6265);
                        continue;
                    case 32:
                        i = indexCount2;
                        c1596.f6250 = m4375(obtainStyledAttributes, index2, c1596.f6250);
                        continue;
                    case 33:
                        i = indexCount2;
                        c1596.f6245 = m4375(obtainStyledAttributes, index2, c1596.f6245);
                        continue;
                    case 34:
                        i = indexCount2;
                        c1596.f6240 = obtainStyledAttributes.getDimensionPixelSize(index2, c1596.f6240);
                        continue;
                    case 35:
                        i = indexCount2;
                        c1596.f6237 = m4375(obtainStyledAttributes, index2, c1596.f6237);
                        continue;
                    case 36:
                        i = indexCount2;
                        c1596.f6281 = m4375(obtainStyledAttributes, index2, c1596.f6281);
                        continue;
                    case 37:
                        i = indexCount2;
                        c1596.f6227 = obtainStyledAttributes.getFloat(index2, c1596.f6227);
                        continue;
                    case 38:
                        i = indexCount2;
                        c1607.f6406 = obtainStyledAttributes.getResourceId(index2, c1607.f6406);
                        continue;
                    case 39:
                        i = indexCount2;
                        c1596.f6276 = obtainStyledAttributes.getFloat(index2, c1596.f6276);
                        continue;
                    case 40:
                        i = indexCount2;
                        c1596.f6252 = obtainStyledAttributes.getFloat(index2, c1596.f6252);
                        continue;
                    case 41:
                        i = indexCount2;
                        c1596.f6236 = obtainStyledAttributes.getInt(index2, c1596.f6236);
                        continue;
                    case 42:
                        i = indexCount2;
                        c1596.f6262 = obtainStyledAttributes.getInt(index2, c1596.f6262);
                        continue;
                    case 43:
                        i = indexCount2;
                        c1604.f6386 = obtainStyledAttributes.getFloat(index2, c1604.f6386);
                        continue;
                    case 44:
                        i = indexCount2;
                        c1612.f6436 = true;
                        c1612.f6429 = obtainStyledAttributes.getDimension(index2, c1612.f6429);
                        continue;
                    case 45:
                        i = indexCount2;
                        c1612.f6434 = obtainStyledAttributes.getFloat(index2, c1612.f6434);
                        continue;
                    case 46:
                        i = indexCount2;
                        c1612.f6426 = obtainStyledAttributes.getFloat(index2, c1612.f6426);
                        continue;
                    case 47:
                        i = indexCount2;
                        c1612.f6428 = obtainStyledAttributes.getFloat(index2, c1612.f6428);
                        continue;
                    case 48:
                        i = indexCount2;
                        c1612.f6430 = obtainStyledAttributes.getFloat(index2, c1612.f6430);
                        continue;
                    case 49:
                        i = indexCount2;
                        c1612.f6437 = obtainStyledAttributes.getDimension(index2, c1612.f6437);
                        continue;
                    case 50:
                        i = indexCount2;
                        c1612.f6432 = obtainStyledAttributes.getDimension(index2, c1612.f6432);
                        continue;
                    case 51:
                        i = indexCount2;
                        c1612.f6425 = obtainStyledAttributes.getDimension(index2, c1612.f6425);
                        continue;
                    case 52:
                        i = indexCount2;
                        c1612.f6427 = obtainStyledAttributes.getDimension(index2, c1612.f6427);
                        continue;
                    case 53:
                        i = indexCount2;
                        c1612.f6431 = obtainStyledAttributes.getDimension(index2, c1612.f6431);
                        continue;
                    case 54:
                        i = indexCount2;
                        c1596.f6239 = obtainStyledAttributes.getInt(index2, c1596.f6239);
                        continue;
                    case 55:
                        i = indexCount2;
                        c1596.f6228 = obtainStyledAttributes.getInt(index2, c1596.f6228);
                        continue;
                    case 56:
                        i = indexCount2;
                        c1596.f6229 = obtainStyledAttributes.getDimensionPixelSize(index2, c1596.f6229);
                        continue;
                    case 57:
                        i = indexCount2;
                        c1596.f6266 = obtainStyledAttributes.getDimensionPixelSize(index2, c1596.f6266);
                        continue;
                    case 58:
                        i = indexCount2;
                        c1596.f6259 = obtainStyledAttributes.getDimensionPixelSize(index2, c1596.f6259);
                        continue;
                    case 59:
                        i = indexCount2;
                        c1596.f6258 = obtainStyledAttributes.getDimensionPixelSize(index2, c1596.f6258);
                        continue;
                    case 60:
                        i = indexCount2;
                        c1612.f6435 = obtainStyledAttributes.getFloat(index2, c1612.f6435);
                        continue;
                    case 61:
                        i = indexCount2;
                        c1596.f6274 = m4375(obtainStyledAttributes, index2, c1596.f6274);
                        continue;
                    case 62:
                        i = indexCount2;
                        c1596.f6226 = obtainStyledAttributes.getDimensionPixelSize(index2, c1596.f6226);
                        continue;
                    case 63:
                        i = indexCount2;
                        c1596.f6261 = obtainStyledAttributes.getFloat(index2, c1596.f6261);
                        continue;
                    case 64:
                        i = indexCount2;
                        c1599.f6302 = m4375(obtainStyledAttributes, index2, c1599.f6302);
                        continue;
                    case 65:
                        i = indexCount2;
                        if (obtainStyledAttributes.peekValue(index2).type == 3) {
                            obtainStyledAttributes.getString(index2);
                            c1599.getClass();
                            break;
                        } else {
                            String str2 = strArr[obtainStyledAttributes.getInteger(index2, 0)];
                            c1599.getClass();
                            break;
                        }
                    case 66:
                        i = indexCount2;
                        obtainStyledAttributes.getInt(index2, 0);
                        c1599.getClass();
                        continue;
                    case 67:
                        i = indexCount2;
                        c1599.f6298 = obtainStyledAttributes.getFloat(index2, c1599.f6298);
                        break;
                    case 68:
                        i = indexCount2;
                        c1604.f6387 = obtainStyledAttributes.getFloat(index2, c1604.f6387);
                        break;
                    case 69:
                        i = indexCount2;
                        c1596.f6246 = obtainStyledAttributes.getFloat(index2, 1.0f);
                        break;
                    case 70:
                        i = indexCount2;
                        c1596.f6260 = obtainStyledAttributes.getFloat(index2, 1.0f);
                        break;
                    case 71:
                        i = indexCount2;
                        break;
                    case 72:
                        i = indexCount2;
                        c1596.f6218 = obtainStyledAttributes.getInt(index2, c1596.f6218);
                        break;
                    case 73:
                        i = indexCount2;
                        c1596.f6243 = obtainStyledAttributes.getDimensionPixelSize(index2, c1596.f6243);
                        break;
                    case 74:
                        i = indexCount2;
                        c1596.f6280 = obtainStyledAttributes.getString(index2);
                        break;
                    case 75:
                        i = indexCount2;
                        c1596.f6256 = obtainStyledAttributes.getBoolean(index2, c1596.f6256);
                        break;
                    case 76:
                        i = indexCount2;
                        c1599.f6296 = obtainStyledAttributes.getInt(index2, c1599.f6296);
                        break;
                    case 77:
                        i = indexCount2;
                        c1596.f6279 = obtainStyledAttributes.getString(index2);
                        break;
                    case 78:
                        i = indexCount2;
                        c1604.f6388 = obtainStyledAttributes.getInt(index2, c1604.f6388);
                        break;
                    case 79:
                        i = indexCount2;
                        c1599.f6297 = obtainStyledAttributes.getFloat(index2, c1599.f6297);
                        break;
                    case 80:
                        i = indexCount2;
                        c1596.f6216 = obtainStyledAttributes.getBoolean(index2, c1596.f6216);
                        break;
                    case 81:
                        i = indexCount2;
                        c1596.f6247 = obtainStyledAttributes.getBoolean(index2, c1596.f6247);
                        break;
                    case 82:
                        i = indexCount2;
                        c1599.f6301 = obtainStyledAttributes.getInteger(index2, c1599.f6301);
                        break;
                    case 83:
                        i = indexCount2;
                        c1612.f6433 = m4375(obtainStyledAttributes, index2, c1612.f6433);
                        break;
                    case 84:
                        i = indexCount2;
                        c1599.f6299 = obtainStyledAttributes.getInteger(index2, c1599.f6299);
                        break;
                    case 85:
                        i = indexCount2;
                        c1599.f6303 = obtainStyledAttributes.getFloat(index2, c1599.f6303);
                        break;
                    case 86:
                        i = indexCount2;
                        int i9 = obtainStyledAttributes.peekValue(index2).type;
                        if (i9 == 1) {
                            c1599.f6295 = obtainStyledAttributes.getResourceId(index2, -1);
                            break;
                        } else if (i9 == 3) {
                            String string2 = obtainStyledAttributes.getString(index2);
                            c1599.f6300 = string2;
                            if (string2.indexOf("/") > 0) {
                                c1599.f6295 = obtainStyledAttributes.getResourceId(index2, -1);
                                break;
                            }
                        } else {
                            obtainStyledAttributes.getInteger(index2, c1599.f6295);
                            break;
                        }
                        break;
                    case 87:
                        i = indexCount2;
                        String str3 = "unused attribute 0x" + Integer.toHexString(index2) + "   " + sparseIntArray.get(index2);
                        break;
                    case 88:
                    case 89:
                    case 90:
                    default:
                        StringBuilder sb2 = new StringBuilder("Unknown attribute 0x");
                        i = indexCount2;
                        sb2.append(Integer.toHexString(index2));
                        sb2.append("   ");
                        sb2.append(sparseIntArray.get(index2));
                        sb2.toString();
                        break;
                    case 91:
                        i = indexCount2;
                        c1596.f6273 = m4375(obtainStyledAttributes, index2, c1596.f6273);
                        break;
                    case 92:
                        i = indexCount2;
                        c1596.f6278 = m4375(obtainStyledAttributes, index2, c1596.f6278);
                        break;
                    case 93:
                        i = indexCount2;
                        c1596.f6270 = obtainStyledAttributes.getDimensionPixelSize(index2, c1596.f6270);
                        break;
                    case 94:
                        i = indexCount2;
                        c1596.f6220 = obtainStyledAttributes.getDimensionPixelSize(index2, c1596.f6220);
                        break;
                    case 95:
                        i = indexCount2;
                        m4373(c1596, obtainStyledAttributes, index2, 0);
                        continue;
                    case 96:
                        i = indexCount2;
                        m4373(c1596, obtainStyledAttributes, index2, 1);
                        break;
                    case 97:
                        i = indexCount2;
                        c1596.f6264 = obtainStyledAttributes.getInt(index2, c1596.f6264);
                        break;
                }
                i7++;
            }
            if (c1596.f6280 != null) {
                c1596.f6234 = null;
            }
        }
        obtainStyledAttributes.recycle();
        return c1607;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0044  */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m4373(java.lang.Object r7, android.content.res.TypedArray r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p065.C1601.m4373(java.lang.Object, android.content.res.TypedArray, int, int):void");
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static void m4374(C1600 c1600, String str) {
        if (str != null) {
            int length = str.length();
            int indexOf = str.indexOf(44);
            int i = -1;
            if (indexOf > 0 && indexOf < length - 1) {
                String substring = str.substring(0, indexOf);
                i = substring.equalsIgnoreCase("W") ? 0 : substring.equalsIgnoreCase("H") ? 1 : -1;
                r2 = indexOf + 1;
            }
            int indexOf2 = str.indexOf(58);
            try {
                if (indexOf2 < 0 || indexOf2 >= length - 1) {
                    String substring2 = str.substring(r2);
                    if (substring2.length() > 0) {
                        Float.parseFloat(substring2);
                    }
                } else {
                    String substring3 = str.substring(r2, indexOf2);
                    String substring4 = str.substring(indexOf2 + 1);
                    if (substring3.length() > 0 && substring4.length() > 0) {
                        float parseFloat = Float.parseFloat(substring3);
                        float parseFloat2 = Float.parseFloat(substring4);
                        if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                            if (i == 1) {
                                Math.abs(parseFloat2 / parseFloat);
                            } else {
                                Math.abs(parseFloat / parseFloat2);
                            }
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        c1600.f6344 = str;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static int m4375(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        return resourceId == -1 ? typedArray.getInt(i, -1) : resourceId;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m4376(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    String name = xml.getName();
                    C1607 m4372 = m4372(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        m4372.f6403.f6277 = true;
                    }
                    this.f6375.put(Integer.valueOf(m4372.f6406), m4372);
                }
            }
        } catch (IOException e) {
            String str = "Error parsing resource: " + i;
        } catch (XmlPullParserException e2) {
            String str2 = "Error parsing resource: " + i;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m4377(ConstraintLayout constraintLayout) {
        int i;
        HashMap hashMap;
        int i2;
        C1601 c1601 = this;
        int childCount = constraintLayout.getChildCount();
        HashMap hashMap2 = c1601.f6375;
        hashMap2.clear();
        int i3 = 0;
        while (i3 < childCount) {
            View childAt = constraintLayout.getChildAt(i3);
            C1600 c1600 = (C1600) childAt.getLayoutParams();
            int id = childAt.getId();
            if (c1601.f6376 && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!hashMap2.containsKey(Integer.valueOf(id))) {
                hashMap2.put(Integer.valueOf(id), new C1607());
            }
            C1607 c1607 = (C1607) hashMap2.get(Integer.valueOf(id));
            if (c1607 == null) {
                i = childCount;
                hashMap = hashMap2;
                i2 = i3;
            } else {
                C1604 c1604 = c1607.f6405;
                C1596 c1596 = c1607.f6403;
                C1612 c1612 = c1607.f6404;
                i = childCount;
                HashMap hashMap3 = new HashMap();
                hashMap = hashMap2;
                Class<?> cls = childAt.getClass();
                i2 = i3;
                HashMap hashMap4 = c1601.f6377;
                for (String str : hashMap4.keySet()) {
                    C1610 c1610 = (C1610) hashMap4.get(str);
                    HashMap hashMap5 = hashMap4;
                    try {
                        if (str.equals("BackgroundColor")) {
                            hashMap3.put(str, new C1610(c1610, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                        } else {
                            hashMap3.put(str, new C1610(c1610, cls.getMethod("getMap" + str, null).invoke(childAt, null)));
                        }
                    } catch (IllegalAccessException e) {
                        StringBuilder m5370 = AbstractC2305.m5370(" Custom Attribute \"", str, "\" not found on ");
                        m5370.append(cls.getName());
                        m5370.toString();
                    } catch (NoSuchMethodException e2) {
                        String str2 = cls.getName() + " must have a method " + str;
                    } catch (InvocationTargetException e3) {
                        StringBuilder m53702 = AbstractC2305.m5370(" Custom Attribute \"", str, "\" not found on ");
                        m53702.append(cls.getName());
                        m53702.toString();
                    }
                    hashMap4 = hashMap5;
                }
                c1607.f6407 = hashMap3;
                c1607.f6406 = id;
                c1596.f6272 = c1600.f6337;
                c1596.f6221 = c1600.f6371;
                c1596.f6230 = c1600.f6357;
                c1596.f6257 = c1600.f6361;
                c1596.f6281 = c1600.f6309;
                c1596.f6237 = c1600.f6318;
                c1596.f6269 = c1600.f6346;
                c1596.f6238 = c1600.f6370;
                c1596.f6222 = c1600.f6325;
                c1596.f6273 = c1600.f6358;
                c1596.f6278 = c1600.f6326;
                c1596.f6250 = c1600.f6338;
                c1596.f6245 = c1600.f6333;
                c1596.f6225 = c1600.f6313;
                c1596.f6217 = c1600.f6305;
                c1596.f6251 = c1600.f6352;
                c1596.f6227 = c1600.f6329;
                c1596.f6219 = c1600.f6344;
                c1596.f6274 = c1600.f6310;
                c1596.f6226 = c1600.f6362;
                c1596.f6261 = c1600.f6367;
                c1596.f6224 = c1600.f6340;
                c1596.f6235 = c1600.f6365;
                c1596.f6263 = c1600.f6324;
                c1596.f6282 = c1600.f6311;
                c1596.f6232 = c1600.f6366;
                c1596.f6249 = c1600.f6364;
                c1596.f6275 = ((ViewGroup.MarginLayoutParams) c1600).width;
                c1596.f6223 = ((ViewGroup.MarginLayoutParams) c1600).height;
                c1596.f6241 = ((ViewGroup.MarginLayoutParams) c1600).leftMargin;
                c1596.f6255 = ((ViewGroup.MarginLayoutParams) c1600).rightMargin;
                c1596.f6240 = ((ViewGroup.MarginLayoutParams) c1600).topMargin;
                c1596.f6267 = ((ViewGroup.MarginLayoutParams) c1600).bottomMargin;
                c1596.f6270 = c1600.f6323;
                c1596.f6252 = c1600.f6356;
                c1596.f6276 = c1600.f6328;
                c1596.f6262 = c1600.f6354;
                c1596.f6236 = c1600.f6343;
                c1596.f6216 = c1600.f6351;
                c1596.f6247 = c1600.f6327;
                c1596.f6239 = c1600.f6359;
                c1596.f6228 = c1600.f6319;
                c1596.f6229 = c1600.f6336;
                c1596.f6266 = c1600.f6332;
                c1596.f6259 = c1600.f6360;
                c1596.f6258 = c1600.f6321;
                c1596.f6246 = c1600.f6330;
                c1596.f6260 = c1600.f6308;
                c1596.f6279 = c1600.f6316;
                c1596.f6271 = c1600.f6315;
                c1596.f6248 = c1600.f6363;
                c1596.f6231 = c1600.f6339;
                c1596.f6233 = c1600.f6307;
                c1596.f6242 = c1600.f6314;
                c1596.f6244 = c1600.f6350;
                c1596.f6220 = c1600.f6312;
                c1596.f6264 = c1600.f6317;
                c1596.f6254 = c1600.getMarginEnd();
                c1596.f6265 = c1600.getMarginStart();
                c1604.f6389 = childAt.getVisibility();
                c1604.f6386 = childAt.getAlpha();
                c1612.f6435 = childAt.getRotation();
                c1612.f6434 = childAt.getRotationX();
                c1612.f6426 = childAt.getRotationY();
                c1612.f6428 = childAt.getScaleX();
                c1612.f6430 = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    c1612.f6437 = pivotX;
                    c1612.f6432 = pivotY;
                }
                c1612.f6425 = childAt.getTranslationX();
                c1612.f6427 = childAt.getTranslationY();
                c1612.f6431 = childAt.getTranslationZ();
                if (c1612.f6436) {
                    c1612.f6429 = childAt.getElevation();
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = (Barrier) childAt;
                    c1596.f6256 = barrier.getAllowsGoneWidget();
                    c1596.f6234 = barrier.getReferencedIds();
                    c1596.f6218 = barrier.getType();
                    c1596.f6243 = barrier.getMargin();
                }
            }
            i3 = i2 + 1;
            c1601 = this;
            childCount = i;
            hashMap2 = hashMap;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:45:0x010d. Please report as an issue. */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m4378(ConstraintLayout constraintLayout) {
        HashSet hashSet;
        int i;
        HashMap hashMap;
        String str;
        C1601 c1601 = this;
        int childCount = constraintLayout.getChildCount();
        HashMap hashMap2 = c1601.f6375;
        HashSet hashSet2 = new HashSet(hashMap2.keySet());
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = constraintLayout.getChildAt(i2);
            int id = childAt.getId();
            if (!hashMap2.containsKey(Integer.valueOf(id))) {
                StringBuilder sb = new StringBuilder("id unknown ");
                try {
                    str = childAt.getContext().getResources().getResourceEntryName(childAt.getId());
                } catch (Exception unused) {
                    str = "UNKNOWN";
                }
                sb.append(str);
                sb.toString();
            } else {
                if (c1601.f6376 && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id != -1) {
                    if (hashMap2.containsKey(Integer.valueOf(id))) {
                        hashSet2.remove(Integer.valueOf(id));
                        C1607 c1607 = (C1607) hashMap2.get(Integer.valueOf(id));
                        if (c1607 != null) {
                            C1604 c1604 = c1607.f6405;
                            C1596 c1596 = c1607.f6403;
                            C1612 c1612 = c1607.f6404;
                            if (childAt instanceof Barrier) {
                                c1596.f6253 = 1;
                                Barrier barrier = (Barrier) childAt;
                                barrier.setId(id);
                                barrier.setType(c1596.f6218);
                                barrier.setMargin(c1596.f6243);
                                barrier.setAllowsGoneWidget(c1596.f6256);
                                int[] iArr = c1596.f6234;
                                if (iArr != null) {
                                    barrier.setReferencedIds(iArr);
                                } else {
                                    String str2 = c1596.f6280;
                                    if (str2 != null) {
                                        int[] m4371 = m4371(barrier, str2);
                                        c1596.f6234 = m4371;
                                        barrier.setReferencedIds(m4371);
                                    }
                                }
                            }
                            C1600 c1600 = (C1600) childAt.getLayoutParams();
                            c1600.m4370();
                            c1607.m4386(c1600);
                            HashMap hashMap3 = c1607.f6407;
                            Class<?> cls = childAt.getClass();
                            for (String str3 : hashMap3.keySet()) {
                                C1610 c1610 = (C1610) hashMap3.get(str3);
                                HashSet hashSet3 = hashSet2;
                                String m3771 = !c1610.f6420 ? AbstractC1220.m3771("set", str3) : str3;
                                int i3 = i2;
                                try {
                                    int m3018 = AbstractC0844.m3018(c1610.f6419);
                                    Class<?> cls2 = Float.TYPE;
                                    Class<?> cls3 = Integer.TYPE;
                                    switch (m3018) {
                                        case 0:
                                            hashMap = hashMap3;
                                            cls.getMethod(m3771, cls3).invoke(childAt, Integer.valueOf(c1610.f6415));
                                            break;
                                        case 1:
                                            hashMap = hashMap3;
                                            cls.getMethod(m3771, cls2).invoke(childAt, Float.valueOf(c1610.f6416));
                                            break;
                                        case 2:
                                            hashMap = hashMap3;
                                            cls.getMethod(m3771, cls3).invoke(childAt, Integer.valueOf(c1610.f6418));
                                            break;
                                        case 3:
                                            hashMap = hashMap3;
                                            Method method = cls.getMethod(m3771, Drawable.class);
                                            ColorDrawable colorDrawable = new ColorDrawable();
                                            colorDrawable.setColor(c1610.f6418);
                                            method.invoke(childAt, colorDrawable);
                                            break;
                                        case 4:
                                            hashMap = hashMap3;
                                            cls.getMethod(m3771, CharSequence.class).invoke(childAt, c1610.f6417);
                                            break;
                                        case 5:
                                            hashMap = hashMap3;
                                            cls.getMethod(m3771, Boolean.TYPE).invoke(childAt, Boolean.valueOf(c1610.f6421));
                                            break;
                                        case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                                            hashMap = hashMap3;
                                            cls.getMethod(m3771, cls2).invoke(childAt, Float.valueOf(c1610.f6416));
                                            break;
                                        case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                                            hashMap = hashMap3;
                                            try {
                                                cls.getMethod(m3771, cls3).invoke(childAt, Integer.valueOf(c1610.f6415));
                                            } catch (IllegalAccessException e) {
                                                StringBuilder m5370 = AbstractC2305.m5370(" Custom Attribute \"", str3, "\" not found on ");
                                                m5370.append(cls.getName());
                                                m5370.toString();
                                                hashSet2 = hashSet3;
                                                i2 = i3;
                                                hashMap3 = hashMap;
                                            } catch (NoSuchMethodException e2) {
                                                String str4 = cls.getName() + " must have a method " + m3771;
                                                hashSet2 = hashSet3;
                                                i2 = i3;
                                                hashMap3 = hashMap;
                                            } catch (InvocationTargetException e3) {
                                                StringBuilder m53702 = AbstractC2305.m5370(" Custom Attribute \"", str3, "\" not found on ");
                                                m53702.append(cls.getName());
                                                m53702.toString();
                                                hashSet2 = hashSet3;
                                                i2 = i3;
                                                hashMap3 = hashMap;
                                            }
                                        default:
                                            hashMap = hashMap3;
                                            break;
                                    }
                                } catch (IllegalAccessException e4) {
                                    hashMap = hashMap3;
                                } catch (NoSuchMethodException e5) {
                                    hashMap = hashMap3;
                                } catch (InvocationTargetException e6) {
                                    hashMap = hashMap3;
                                }
                                hashSet2 = hashSet3;
                                i2 = i3;
                                hashMap3 = hashMap;
                            }
                            hashSet = hashSet2;
                            i = i2;
                            childAt.setLayoutParams(c1600);
                            if (c1604.f6388 == 0) {
                                childAt.setVisibility(c1604.f6389);
                            }
                            childAt.setAlpha(c1604.f6386);
                            childAt.setRotation(c1612.f6435);
                            childAt.setRotationX(c1612.f6434);
                            childAt.setRotationY(c1612.f6426);
                            childAt.setScaleX(c1612.f6428);
                            childAt.setScaleY(c1612.f6430);
                            if (c1612.f6433 != -1) {
                                if (((View) childAt.getParent()).findViewById(c1612.f6433) != null) {
                                    float bottom = (r0.getBottom() + r0.getTop()) / 2.0f;
                                    float right = (r0.getRight() + r0.getLeft()) / 2.0f;
                                    if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                        childAt.setPivotX(right - childAt.getLeft());
                                        childAt.setPivotY(bottom - childAt.getTop());
                                    }
                                }
                            } else {
                                if (!Float.isNaN(c1612.f6437)) {
                                    childAt.setPivotX(c1612.f6437);
                                }
                                if (!Float.isNaN(c1612.f6432)) {
                                    childAt.setPivotY(c1612.f6432);
                                }
                            }
                            childAt.setTranslationX(c1612.f6425);
                            childAt.setTranslationY(c1612.f6427);
                            childAt.setTranslationZ(c1612.f6431);
                            if (c1612.f6436) {
                                childAt.setElevation(c1612.f6429);
                            }
                        }
                    } else {
                        hashSet = hashSet2;
                        i = i2;
                        String str5 = "WARNING NO CONSTRAINTS for view " + id;
                    }
                    i2 = i + 1;
                    c1601 = this;
                    hashSet2 = hashSet;
                }
            }
            hashSet = hashSet2;
            i = i2;
            i2 = i + 1;
            c1601 = this;
            hashSet2 = hashSet;
        }
        Iterator it = hashSet2.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            C1607 c16072 = (C1607) hashMap2.get(num);
            if (c16072 != null) {
                C1596 c15962 = c16072.f6403;
                if (c15962.f6253 == 1) {
                    Barrier barrier2 = new Barrier(constraintLayout.getContext());
                    barrier2.setId(num.intValue());
                    int[] iArr2 = c15962.f6234;
                    if (iArr2 != null) {
                        barrier2.setReferencedIds(iArr2);
                    } else {
                        String str6 = c15962.f6280;
                        if (str6 != null) {
                            int[] m43712 = m4371(barrier2, str6);
                            c15962.f6234 = m43712;
                            barrier2.setReferencedIds(m43712);
                        }
                    }
                    barrier2.setType(c15962.f6218);
                    barrier2.setMargin(c15962.f6243);
                    C1600 m87 = ConstraintLayout.m87();
                    barrier2.m4390();
                    c16072.m4386(m87);
                    constraintLayout.addView(barrier2, m87);
                }
                if (c15962.f6277) {
                    View guideline = new Guideline(constraintLayout.getContext());
                    guideline.setId(num.intValue());
                    C1600 m872 = ConstraintLayout.m87();
                    c16072.m4386(m872);
                    constraintLayout.addView(guideline, m872);
                }
            }
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt2 = constraintLayout.getChildAt(i4);
            if (childAt2 instanceof AbstractC1609) {
                ((AbstractC1609) childAt2).mo94(constraintLayout);
            }
        }
    }
}
