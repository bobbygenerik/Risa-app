package p000;

import android.content.pm.PackageInfo;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import p010.AbstractC0844;
import p035.AbstractC1220;
import p196.C2893;
import p307.AbstractC3740;
import ﹳˋ.ʼˎ;

/* renamed from: ʻʻ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0757 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final ʼˎ f3136 = new ʼˎ(2);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final byte[] f3135 = {112, 114, 111, 0};

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final byte[] f3129 = {112, 114, 109, 0};

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final byte[] f3131 = {48, 49, 53, 0};

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final byte[] f3132 = {48, 49, 48, 0};

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final byte[] f3137 = {48, 48, 57, 0};

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final byte[] f3133 = {48, 48, 53, 0};

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final byte[] f3134 = {48, 48, 49, 0};

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final byte[] f3128 = {48, 48, 49, 0};

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final byte[] f3130 = {48, 48, 50, 0};

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static void m2761(ByteArrayOutputStream byteArrayOutputStream, int i) {
        m2765(byteArrayOutputStream, i, 2);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static C2893[] m2762(FileInputStream fileInputStream, byte[] bArr, byte[] bArr2, C2893[] c2893Arr) {
        byte[] bArr3 = f3128;
        if (!Arrays.equals(bArr, bArr3)) {
            if (!Arrays.equals(bArr, f3130)) {
                throw new IllegalStateException("Unsupported meta version");
            }
            int m2768 = (int) m2768(fileInputStream, 2);
            byte[] m2776 = m2776(fileInputStream, (int) m2768(fileInputStream, 4), (int) m2768(fileInputStream, 4));
            if (fileInputStream.read() > 0) {
                throw new IllegalStateException("Content found after the end of file");
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(m2776);
            try {
                C2893[] m2773 = m2773(byteArrayInputStream, bArr2, m2768, c2893Arr);
                byteArrayInputStream.close();
                return m2773;
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (Arrays.equals(f3131, bArr2)) {
            throw new IllegalStateException("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
        }
        if (!Arrays.equals(bArr, bArr3)) {
            throw new IllegalStateException("Unsupported meta version");
        }
        int m27682 = (int) m2768(fileInputStream, 1);
        byte[] m27762 = m2776(fileInputStream, (int) m2768(fileInputStream, 4), (int) m2768(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            throw new IllegalStateException("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(m27762);
        try {
            C2893[] m2766 = m2766(byteArrayInputStream2, m27682, c2893Arr);
            byteArrayInputStream2.close();
            return m2766;
        } catch (Throwable th3) {
            try {
                byteArrayInputStream2.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static void m2763(ByteArrayOutputStream byteArrayOutputStream, C2893 c2893) {
        m2772(byteArrayOutputStream, c2893);
        int i = c2893.f10875;
        int[] iArr = (int[]) c2893.f10878;
        int length = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = iArr[i2];
            m2761(byteArrayOutputStream, i4 - i3);
            i2++;
            i3 = i4;
        }
        byte[] bArr = new byte[(((i * 2) + 7) & (-8)) / 8];
        for (Map.Entry entry : ((TreeMap) c2893.f10879).entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            int intValue2 = ((Integer) entry.getValue()).intValue();
            if ((intValue2 & 2) != 0) {
                int i5 = intValue / 8;
                bArr[i5] = (byte) (bArr[i5] | (1 << (intValue % 8)));
            }
            if ((intValue2 & 4) != 0) {
                int i6 = intValue + i;
                int i7 = i6 / 8;
                bArr[i7] = (byte) ((1 << (i6 % 8)) | bArr[i7]);
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static boolean m2764(File file) {
        if (!file.isDirectory()) {
            file.delete();
            return true;
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return false;
        }
        boolean z = true;
        for (File file2 : listFiles) {
            z = m2764(file2) && z;
        }
        return z;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static void m2765(ByteArrayOutputStream byteArrayOutputStream, long j, int i) {
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) ((j >> (i2 * 8)) & 255);
        }
        byteArrayOutputStream.write(bArr);
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static C2893[] m2766(ByteArrayInputStream byteArrayInputStream, int i, C2893[] c2893Arr) {
        if (byteArrayInputStream.available() == 0) {
            return new C2893[0];
        }
        if (i != c2893Arr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        String[] strArr = new String[i];
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            int m2768 = (int) m2768(byteArrayInputStream, 2);
            iArr[i2] = (int) m2768(byteArrayInputStream, 2);
            strArr[i2] = new String(m2782(byteArrayInputStream, m2768), StandardCharsets.UTF_8);
        }
        for (int i3 = 0; i3 < i; i3++) {
            C2893 c2893 = c2893Arr[i3];
            if (!((String) c2893.f10876).equals(strArr[i3])) {
                throw new IllegalStateException("Order of dexfiles in metadata did not match baseline");
            }
            int i4 = iArr[i3];
            c2893.f10884 = i4;
            c2893.f10878 = m2774(byteArrayInputStream, i4);
        }
        return c2893Arr;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static String m2767(String str, String str2, byte[] bArr) {
        byte[] bArr2 = f3134;
        boolean equals = Arrays.equals(bArr, bArr2);
        byte[] bArr3 = f3133;
        String str3 = (equals || Arrays.equals(bArr, bArr3)) ? ":" : "!";
        if (str.length() <= 0) {
            if ("!".equals(str3)) {
                return str2.replace(":", "!");
            }
            if (":".equals(str3)) {
                return str2.replace("!", ":");
            }
        } else {
            if (str2.equals("classes.dex")) {
                return str;
            }
            if (str2.contains("!") || str2.contains(":")) {
                if ("!".equals(str3)) {
                    return str2.replace(":", "!");
                }
                if (":".equals(str3)) {
                    return str2.replace("!", ":");
                }
            } else if (!str2.endsWith(".apk")) {
                return AbstractC1220.m3775(AbstractC0844.m3020(str), (Arrays.equals(bArr, bArr2) || Arrays.equals(bArr, bArr3)) ? ":" : "!", str2);
            }
        }
        return str2;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static long m2768(InputStream inputStream, int i) {
        byte[] m2782 = m2782(inputStream, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j += (m2782[i2] & 255) << (i2 * 8);
        }
        return j;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static boolean m2769(ByteArrayOutputStream byteArrayOutputStream, byte[] bArr, C2893[] c2893Arr) {
        long j;
        ArrayList arrayList;
        int length;
        byte[] bArr2 = f3131;
        int i = 0;
        if (!Arrays.equals(bArr, bArr2)) {
            byte[] bArr3 = f3132;
            if (Arrays.equals(bArr, bArr3)) {
                byte[] m2778 = m2778(c2893Arr, bArr3);
                m2765(byteArrayOutputStream, c2893Arr.length, 1);
                m2765(byteArrayOutputStream, m2778.length, 4);
                byte[] m2779 = m2779(m2778);
                m2765(byteArrayOutputStream, m2779.length, 4);
                byteArrayOutputStream.write(m2779);
                return true;
            }
            byte[] bArr4 = f3133;
            if (Arrays.equals(bArr, bArr4)) {
                m2765(byteArrayOutputStream, c2893Arr.length, 1);
                for (C2893 c2893 : c2893Arr) {
                    int size = ((TreeMap) c2893.f10879).size() * 4;
                    String m2767 = m2767((String) c2893.f10882, (String) c2893.f10876, bArr4);
                    Charset charset = StandardCharsets.UTF_8;
                    m2761(byteArrayOutputStream, m2767.getBytes(charset).length);
                    m2761(byteArrayOutputStream, ((int[]) c2893.f10878).length);
                    m2765(byteArrayOutputStream, size, 4);
                    m2765(byteArrayOutputStream, c2893.f10880, 4);
                    byteArrayOutputStream.write(m2767.getBytes(charset));
                    Iterator it = ((TreeMap) c2893.f10879).keySet().iterator();
                    while (it.hasNext()) {
                        m2761(byteArrayOutputStream, ((Integer) it.next()).intValue());
                        m2761(byteArrayOutputStream, 0);
                    }
                    for (int i2 : (int[]) c2893.f10878) {
                        m2761(byteArrayOutputStream, i2);
                    }
                }
                return true;
            }
            byte[] bArr5 = f3137;
            if (Arrays.equals(bArr, bArr5)) {
                byte[] m27782 = m2778(c2893Arr, bArr5);
                m2765(byteArrayOutputStream, c2893Arr.length, 1);
                m2765(byteArrayOutputStream, m27782.length, 4);
                byte[] m27792 = m2779(m27782);
                m2765(byteArrayOutputStream, m27792.length, 4);
                byteArrayOutputStream.write(m27792);
                return true;
            }
            byte[] bArr6 = f3134;
            if (!Arrays.equals(bArr, bArr6)) {
                return false;
            }
            m2761(byteArrayOutputStream, c2893Arr.length);
            for (C2893 c28932 : c2893Arr) {
                String str = (String) c28932.f10882;
                TreeMap treeMap = (TreeMap) c28932.f10879;
                String m27672 = m2767(str, (String) c28932.f10876, bArr6);
                Charset charset2 = StandardCharsets.UTF_8;
                m2761(byteArrayOutputStream, m27672.getBytes(charset2).length);
                m2761(byteArrayOutputStream, treeMap.size());
                m2761(byteArrayOutputStream, ((int[]) c28932.f10878).length);
                m2765(byteArrayOutputStream, c28932.f10880, 4);
                byteArrayOutputStream.write(m27672.getBytes(charset2));
                Iterator it2 = treeMap.keySet().iterator();
                while (it2.hasNext()) {
                    m2761(byteArrayOutputStream, ((Integer) it2.next()).intValue());
                }
                for (int i3 : (int[]) c28932.f10878) {
                    m2761(byteArrayOutputStream, i3);
                }
            }
            return true;
        }
        ArrayList arrayList2 = new ArrayList(3);
        ArrayList arrayList3 = new ArrayList(3);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        try {
            m2761(byteArrayOutputStream2, c2893Arr.length);
            int i4 = 2;
            int i5 = 2;
            for (C2893 c28933 : c2893Arr) {
                m2765(byteArrayOutputStream2, c28933.f10880, 4);
                m2765(byteArrayOutputStream2, c28933.f10877, 4);
                m2765(byteArrayOutputStream2, c28933.f10875, 4);
                String m27673 = m2767((String) c28933.f10882, (String) c28933.f10876, bArr2);
                Charset charset3 = StandardCharsets.UTF_8;
                int length2 = m27673.getBytes(charset3).length;
                m2761(byteArrayOutputStream2, length2);
                i5 = i5 + 14 + length2;
                byteArrayOutputStream2.write(m27673.getBytes(charset3));
            }
            byte[] byteArray = byteArrayOutputStream2.toByteArray();
            if (i5 != byteArray.length) {
                throw new IllegalStateException("Expected size " + i5 + ", does not match actual size " + byteArray.length);
            }
            C0763 c0763 = new C0763(1, false, byteArray);
            byteArrayOutputStream2.close();
            arrayList2.add(c0763);
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            int i6 = 0;
            int i7 = 0;
            while (i6 < c2893Arr.length) {
                try {
                    C2893 c28934 = c2893Arr[i6];
                    m2761(byteArrayOutputStream3, i6);
                    m2761(byteArrayOutputStream3, c28934.f10884);
                    i7 = i7 + 4 + (c28934.f10884 * i4);
                    int[] iArr = (int[]) c28934.f10878;
                    int length3 = iArr.length;
                    int i8 = i;
                    int i9 = i4;
                    int i10 = i8;
                    while (i10 < length3) {
                        int i11 = iArr[i10];
                        m2761(byteArrayOutputStream3, i11 - i8);
                        i10++;
                        i8 = i11;
                    }
                    i6++;
                    i4 = i9;
                    i = 0;
                } catch (Throwable th) {
                }
            }
            byte[] byteArray2 = byteArrayOutputStream3.toByteArray();
            if (i7 != byteArray2.length) {
                throw new IllegalStateException("Expected size " + i7 + ", does not match actual size " + byteArray2.length);
            }
            C0763 c07632 = new C0763(3, true, byteArray2);
            byteArrayOutputStream3.close();
            arrayList2.add(c07632);
            byteArrayOutputStream3 = new ByteArrayOutputStream();
            int i12 = 0;
            int i13 = 0;
            while (i12 < c2893Arr.length) {
                try {
                    C2893 c28935 = c2893Arr[i12];
                    Iterator it3 = ((TreeMap) c28935.f10879).entrySet().iterator();
                    int i14 = 0;
                    while (it3.hasNext()) {
                        i14 |= ((Integer) ((Map.Entry) it3.next()).getValue()).intValue();
                    }
                    ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
                    try {
                        m2780(byteArrayOutputStream4, i14, c28935);
                        byte[] byteArray3 = byteArrayOutputStream4.toByteArray();
                        byteArrayOutputStream4.close();
                        byteArrayOutputStream4 = new ByteArrayOutputStream();
                        try {
                            m2772(byteArrayOutputStream4, c28935);
                            byte[] byteArray4 = byteArrayOutputStream4.toByteArray();
                            byteArrayOutputStream4.close();
                            m2761(byteArrayOutputStream3, i12);
                            int length4 = byteArray3.length + 2 + byteArray4.length;
                            int i15 = i13 + 6;
                            ArrayList arrayList4 = arrayList3;
                            m2765(byteArrayOutputStream3, length4, 4);
                            m2761(byteArrayOutputStream3, i14);
                            byteArrayOutputStream3.write(byteArray3);
                            byteArrayOutputStream3.write(byteArray4);
                            i13 = i15 + length4;
                            i12++;
                            arrayList3 = arrayList4;
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                    try {
                        byteArrayOutputStream3.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
            }
            ArrayList arrayList5 = arrayList3;
            byte[] byteArray5 = byteArrayOutputStream3.toByteArray();
            if (i13 != byteArray5.length) {
                throw new IllegalStateException("Expected size " + i13 + ", does not match actual size " + byteArray5.length);
            }
            C0763 c07633 = new C0763(4, true, byteArray5);
            byteArrayOutputStream3.close();
            arrayList2.add(c07633);
            long j2 = 4;
            long size2 = j2 + j2 + 4 + (arrayList2.size() * 16);
            m2765(byteArrayOutputStream, arrayList2.size(), 4);
            int i16 = 0;
            while (i16 < arrayList2.size()) {
                C0763 c07634 = (C0763) arrayList2.get(i16);
                int i17 = c07634.f3149;
                byte[] bArr7 = c07634.f3148;
                if (i17 == 1) {
                    j = 0;
                } else if (i17 == 2) {
                    j = 1;
                } else if (i17 == 3) {
                    j = 2;
                } else if (i17 == 4) {
                    j = 3;
                } else {
                    if (i17 != 5) {
                        throw null;
                    }
                    j = 4;
                }
                m2765(byteArrayOutputStream, j, 4);
                m2765(byteArrayOutputStream, size2, 4);
                if (c07634.f3147) {
                    long length5 = bArr7.length;
                    byte[] m27793 = m2779(bArr7);
                    arrayList = arrayList5;
                    arrayList.add(m27793);
                    m2765(byteArrayOutputStream, m27793.length, 4);
                    m2765(byteArrayOutputStream, length5, 4);
                    length = m27793.length;
                } else {
                    arrayList = arrayList5;
                    arrayList.add(bArr7);
                    m2765(byteArrayOutputStream, bArr7.length, 4);
                    m2765(byteArrayOutputStream, 0L, 4);
                    length = bArr7.length;
                }
                size2 += length;
                i16++;
                arrayList5 = arrayList;
            }
            ArrayList arrayList6 = arrayList5;
            for (int i18 = 0; i18 < arrayList6.size(); i18++) {
                byteArrayOutputStream.write((byte[]) arrayList6.get(i18));
            }
            return true;
        } catch (Throwable th3) {
            try {
                byteArrayOutputStream2.close();
                throw th3;
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
                throw th3;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01cc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01d3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0103 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x02eb A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x016e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r7v22, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference failed for: r7v26, types: [java.io.OutputStream, java.io.ByteArrayOutputStream] */
    /* JADX WARN: Type inference failed for: r7v27, types: [int] */
    /* JADX WARN: Type inference failed for: r7v28 */
    /* JADX WARN: Type inference failed for: r7v34 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v48 */
    /* JADX WARN: Type inference failed for: r7v49 */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* renamed from: ˏי, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m2770(android.content.Context r18, java.util.concurrent.Executor r19, p000.InterfaceC0756 r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 766
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.AbstractC0757.m2770(android.content.Context, java.util.concurrent.Executor, ʻʻ.ˈ, boolean):void");
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static void m2771(PackageInfo packageInfo, File file) {
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(new File(file, "profileinstaller_profileWrittenFor_lastUpdateTime.dat")));
            try {
                dataOutputStream.writeLong(packageInfo.lastUpdateTime);
                dataOutputStream.close();
            } finally {
            }
        } catch (IOException unused) {
        }
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static void m2772(ByteArrayOutputStream byteArrayOutputStream, C2893 c2893) {
        int i = 0;
        for (Map.Entry entry : ((TreeMap) c2893.f10879).entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            if ((((Integer) entry.getValue()).intValue() & 1) != 0) {
                m2761(byteArrayOutputStream, intValue - i);
                m2761(byteArrayOutputStream, 0);
                i = intValue;
            }
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static C2893[] m2773(ByteArrayInputStream byteArrayInputStream, byte[] bArr, int i, C2893[] c2893Arr) {
        if (byteArrayInputStream.available() == 0) {
            return new C2893[0];
        }
        if (i != c2893Arr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        for (int i2 = 0; i2 < i; i2++) {
            m2768(byteArrayInputStream, 2);
            String str = new String(m2782(byteArrayInputStream, (int) m2768(byteArrayInputStream, 2)), StandardCharsets.UTF_8);
            long m2768 = m2768(byteArrayInputStream, 4);
            int m27682 = (int) m2768(byteArrayInputStream, 2);
            C2893 c2893 = null;
            if (c2893Arr.length > 0) {
                int indexOf = str.indexOf("!");
                if (indexOf < 0) {
                    indexOf = str.indexOf(":");
                }
                String substring = indexOf > 0 ? str.substring(indexOf + 1) : str;
                int i3 = 0;
                while (true) {
                    if (i3 >= c2893Arr.length) {
                        break;
                    }
                    if (((String) c2893Arr[i3].f10876).equals(substring)) {
                        c2893 = c2893Arr[i3];
                        break;
                    }
                    i3++;
                }
            }
            if (c2893 == null) {
                throw new IllegalStateException("Missing profile key: ".concat(str));
            }
            c2893.f10877 = m2768;
            int[] m2774 = m2774(byteArrayInputStream, m27682);
            if (Arrays.equals(bArr, f3134)) {
                c2893.f10884 = m27682;
                c2893.f10878 = m2774;
            }
        }
        return c2893Arr;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static int[] m2774(ByteArrayInputStream byteArrayInputStream, int i) {
        int[] iArr = new int[i];
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += (int) m2768(byteArrayInputStream, 2);
            iArr[i3] = i2;
        }
        return iArr;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static C2893[] m2775(ByteArrayInputStream byteArrayInputStream, String str, int i) {
        int i2 = 0;
        if (byteArrayInputStream.available() == 0) {
            return new C2893[0];
        }
        C2893[] c2893Arr = new C2893[i];
        for (int i3 = 0; i3 < i; i3++) {
            int m2768 = (int) m2768(byteArrayInputStream, 2);
            int m27682 = (int) m2768(byteArrayInputStream, 2);
            c2893Arr[i3] = new C2893(str, new String(m2782(byteArrayInputStream, m2768), StandardCharsets.UTF_8), m2768(byteArrayInputStream, 4), m27682, (int) m2768(byteArrayInputStream, 4), (int) m2768(byteArrayInputStream, 4), new int[m27682], new TreeMap());
        }
        int i4 = 0;
        while (i4 < i) {
            C2893 c2893 = c2893Arr[i4];
            int available = byteArrayInputStream.available();
            int i5 = c2893.f10881;
            int i6 = c2893.f10875;
            TreeMap treeMap = (TreeMap) c2893.f10879;
            int i7 = available - i5;
            int i8 = i2;
            while (byteArrayInputStream.available() > i7) {
                i8 += (int) m2768(byteArrayInputStream, 2);
                treeMap.put(Integer.valueOf(i8), 1);
                int m27683 = (int) m2768(byteArrayInputStream, 2);
                while (m27683 > 0) {
                    m2768(byteArrayInputStream, 2);
                    int m27684 = (int) m2768(byteArrayInputStream, 1);
                    if (m27684 != 6 && m27684 != 7) {
                        while (m27684 > 0) {
                            m2768(byteArrayInputStream, 1);
                            int i9 = i2;
                            int i10 = i4;
                            for (int m27685 = (int) m2768(byteArrayInputStream, 1); m27685 > 0; m27685--) {
                                m2768(byteArrayInputStream, 2);
                            }
                            m27684--;
                            i2 = i9;
                            i4 = i10;
                        }
                    }
                    m27683--;
                    i2 = i2;
                    i4 = i4;
                }
            }
            int i11 = i2;
            int i12 = i4;
            if (byteArrayInputStream.available() != i7) {
                throw new IllegalStateException("Read too much data during profile line parse");
            }
            c2893.f10878 = m2774(byteArrayInputStream, c2893.f10884);
            BitSet valueOf = BitSet.valueOf(m2782(byteArrayInputStream, (((i6 * 2) + 7) & (-8)) / 8));
            for (int i13 = i11; i13 < i6; i13++) {
                int i14 = valueOf.get(i13) ? 2 : i11;
                if (valueOf.get(i13 + i6)) {
                    i14 |= 4;
                }
                if (i14 != 0) {
                    Integer num = (Integer) treeMap.get(Integer.valueOf(i13));
                    if (num == null) {
                        num = Integer.valueOf(i11);
                    }
                    treeMap.put(Integer.valueOf(i13), Integer.valueOf(i14 | num.intValue()));
                }
            }
            i4 = i12 + 1;
            i2 = i11;
        }
        return c2893Arr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x005d, code lost:
    
        if (r0.finished() == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0062, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x006a, code lost:
    
        throw new java.lang.IllegalStateException("Inflater did not finish");
     */
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] m2776(java.io.FileInputStream r8, int r9, int r10) {
        /*
            java.util.zip.Inflater r0 = new java.util.zip.Inflater
            r0.<init>()
            byte[] r1 = new byte[r10]     // Catch: java.lang.Throwable -> L2e
            r2 = 2048(0x800, float:2.87E-42)
            byte[] r2 = new byte[r2]     // Catch: java.lang.Throwable -> L2e
            r3 = 0
            r4 = r3
            r5 = r4
        Le:
            boolean r6 = r0.finished()     // Catch: java.lang.Throwable -> L2e
            if (r6 != 0) goto L57
            boolean r6 = r0.needsDictionary()     // Catch: java.lang.Throwable -> L2e
            if (r6 != 0) goto L57
            if (r4 >= r9) goto L57
            int r6 = r8.read(r2)     // Catch: java.lang.Throwable -> L2e
            if (r6 < 0) goto L3b
            r0.setInput(r2, r3, r6)     // Catch: java.lang.Throwable -> L2e
            int r7 = r10 - r5
            int r7 = r0.inflate(r1, r5, r7)     // Catch: java.lang.Throwable -> L2e java.util.zip.DataFormatException -> L30
            int r5 = r5 + r7
            int r4 = r4 + r6
            goto Le
        L2e:
            r8 = move-exception
            goto L8a
        L30:
            r8 = move-exception
            java.lang.String r8 = r8.getMessage()     // Catch: java.lang.Throwable -> L2e
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L2e
            r9.<init>(r8)     // Catch: java.lang.Throwable -> L2e
            throw r9     // Catch: java.lang.Throwable -> L2e
        L3b:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2e
            r8.<init>()     // Catch: java.lang.Throwable -> L2e
            java.lang.String r10 = "Invalid zip data. Stream ended after $totalBytesRead bytes. Expected "
            r8.append(r10)     // Catch: java.lang.Throwable -> L2e
            r8.append(r9)     // Catch: java.lang.Throwable -> L2e
            java.lang.String r9 = " bytes"
            r8.append(r9)     // Catch: java.lang.Throwable -> L2e
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L2e
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L2e
            r9.<init>(r8)     // Catch: java.lang.Throwable -> L2e
            throw r9     // Catch: java.lang.Throwable -> L2e
        L57:
            if (r4 != r9) goto L6b
            boolean r8 = r0.finished()     // Catch: java.lang.Throwable -> L2e
            if (r8 == 0) goto L63
            r0.end()
            return r1
        L63:
            java.lang.String r8 = "Inflater did not finish"
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L2e
            r9.<init>(r8)     // Catch: java.lang.Throwable -> L2e
            throw r9     // Catch: java.lang.Throwable -> L2e
        L6b:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2e
            r8.<init>()     // Catch: java.lang.Throwable -> L2e
            java.lang.String r10 = "Didn't read enough bytes during decompression. expected="
            r8.append(r10)     // Catch: java.lang.Throwable -> L2e
            r8.append(r9)     // Catch: java.lang.Throwable -> L2e
            java.lang.String r9 = " actual="
            r8.append(r9)     // Catch: java.lang.Throwable -> L2e
            r8.append(r4)     // Catch: java.lang.Throwable -> L2e
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L2e
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L2e
            r9.<init>(r8)     // Catch: java.lang.Throwable -> L2e
            throw r9     // Catch: java.lang.Throwable -> L2e
        L8a:
            r0.end()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.AbstractC0757.m2776(java.io.FileInputStream, int, int):byte[]");
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static void m2777(ByteArrayOutputStream byteArrayOutputStream, C2893 c2893, String str) {
        Charset charset = StandardCharsets.UTF_8;
        m2761(byteArrayOutputStream, str.getBytes(charset).length);
        m2761(byteArrayOutputStream, c2893.f10884);
        m2765(byteArrayOutputStream, c2893.f10881, 4);
        m2765(byteArrayOutputStream, c2893.f10880, 4);
        m2765(byteArrayOutputStream, c2893.f10875, 4);
        byteArrayOutputStream.write(str.getBytes(charset));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static byte[] m2778(C2893[] c2893Arr, byte[] bArr) {
        int i = 0;
        int i2 = 0;
        for (C2893 c2893 : c2893Arr) {
            i2 += ((((c2893.f10875 * 2) + 7) & (-8)) / 8) + (c2893.f10884 * 2) + m2767((String) c2893.f10882, (String) c2893.f10876, bArr).getBytes(StandardCharsets.UTF_8).length + 16 + c2893.f10881;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i2);
        if (Arrays.equals(bArr, f3137)) {
            int length = c2893Arr.length;
            while (i < length) {
                C2893 c28932 = c2893Arr[i];
                m2777(byteArrayOutputStream, c28932, m2767((String) c28932.f10882, (String) c28932.f10876, bArr));
                m2763(byteArrayOutputStream, c28932);
                i++;
            }
        } else {
            for (C2893 c28933 : c2893Arr) {
                m2777(byteArrayOutputStream, c28933, m2767((String) c28933.f10882, (String) c28933.f10876, bArr));
            }
            int length2 = c2893Arr.length;
            while (i < length2) {
                m2763(byteArrayOutputStream, c2893Arr[i]);
                i++;
            }
        }
        if (byteArrayOutputStream.size() == i2) {
            return byteArrayOutputStream.toByteArray();
        }
        throw new IllegalStateException("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + i2);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static byte[] m2779(byte[] bArr) {
        Deflater deflater = new Deflater(1);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream, deflater);
            try {
                deflaterOutputStream.write(bArr);
                deflaterOutputStream.close();
                deflater.end();
                return byteArrayOutputStream.toByteArray();
            } finally {
            }
        } catch (Throwable th) {
            deflater.end();
            throw th;
        }
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static void m2780(ByteArrayOutputStream byteArrayOutputStream, int i, C2893 c2893) {
        int i2 = c2893.f10875;
        byte[] bArr = new byte[(((Integer.bitCount(i & (-2)) * i2) + 7) & (-8)) / 8];
        for (Map.Entry entry : ((TreeMap) c2893.f10879).entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            int intValue2 = ((Integer) entry.getValue()).intValue();
            int i3 = 0;
            for (int i4 = 1; i4 <= 4; i4 <<= 1) {
                if (i4 != 1 && (i4 & i) != 0) {
                    if ((i4 & intValue2) == i4) {
                        int i5 = (i3 * i2) + intValue;
                        int i6 = i5 / 8;
                        bArr[i6] = (byte) ((1 << (i5 % 8)) | bArr[i6]);
                    }
                    i3++;
                }
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static C2893[] m2781(FileInputStream fileInputStream, byte[] bArr, String str) {
        if (!Arrays.equals(bArr, f3132)) {
            throw new IllegalStateException("Unsupported version");
        }
        int m2768 = (int) m2768(fileInputStream, 1);
        byte[] m2776 = m2776(fileInputStream, (int) m2768(fileInputStream, 4), (int) m2768(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            throw new IllegalStateException("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(m2776);
        try {
            C2893[] m2775 = m2775(byteArrayInputStream, str, m2768);
            byteArrayInputStream.close();
            return m2775;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static byte[] m2782(InputStream inputStream, int i) {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read < 0) {
                throw new IllegalStateException(AbstractC3740.m7932(i, "Not enough bytes to read: "));
            }
            i2 += read;
        }
        return bArr;
    }
}
