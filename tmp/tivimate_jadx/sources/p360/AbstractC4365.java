package p360;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Trace;
import com.bumptech.glide.ʽ;
import com.parse.ʼᐧ;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import p143.AbstractC2392;
import p179.C2713;
import p254.C3351;
import p349.AbstractC4288;
import ˊⁱ.ˑﹳ;

/* renamed from: ᵔٴ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4365 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C2713 f16204 = new C2713(2);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final ʼᐧ f16203 = new ʼᐧ(10);

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C4369[] m8838(Context context, C4366 c4366, String str) {
        Trace.beginSection(ʽ.ˊʻ("FontProvider.query"));
        try {
            ArrayList arrayList = new ArrayList();
            Uri build = new Uri.Builder().scheme("content").authority(str).build();
            Uri build2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
            ᐧﹳ.ʽ r2 = Build.VERSION.SDK_INT < 24 ? new ᐧﹳ.ʽ(context, build) : new ˑﹳ(context, build);
            Cursor cursor = null;
            try {
                String[] strArr = {"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"};
                Trace.beginSection(ʽ.ˊʻ("ContentQueryWrapper.query"));
                try {
                    cursor = r2.m8843(build, strArr, new String[]{c4366.f16205});
                    Trace.endSection();
                    if (cursor != null && cursor.getCount() > 0) {
                        int columnIndex = cursor.getColumnIndex("result_code");
                        ArrayList arrayList2 = new ArrayList();
                        int columnIndex2 = cursor.getColumnIndex("_id");
                        int columnIndex3 = cursor.getColumnIndex("file_id");
                        int columnIndex4 = cursor.getColumnIndex("font_ttc_index");
                        int columnIndex5 = cursor.getColumnIndex("font_weight");
                        int columnIndex6 = cursor.getColumnIndex("font_italic");
                        while (cursor.moveToNext()) {
                            int i = columnIndex != -1 ? cursor.getInt(columnIndex) : 0;
                            arrayList2.add(new C4369(columnIndex3 == -1 ? ContentUris.withAppendedId(build, cursor.getLong(columnIndex2)) : ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3)), columnIndex4 != -1 ? cursor.getInt(columnIndex4) : 0, columnIndex5 != -1 ? cursor.getInt(columnIndex5) : 400, columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1, i));
                        }
                        arrayList = arrayList2;
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    r2.close();
                    return (C4369[]) arrayList.toArray(new C4369[0]);
                } finally {
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                r2.close();
                throw th;
            }
        } finally {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Object, ᵔٴ.ⁱˊ] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static ProviderInfo m8839(PackageManager packageManager, C4366 c4366, Resources resources) {
        ʼᐧ r0 = f16203;
        C2713 c2713 = f16204;
        Trace.beginSection(ʽ.ˊʻ("FontProvider.getProvider"));
        try {
            List list = c4366.f16206;
            String str = c4366.f16210;
            String str2 = c4366.f16209;
            if (list == null) {
                list = AbstractC2392.m5496(resources, 0);
            }
            ?? obj = new Object();
            obj.f16229 = str;
            obj.f16228 = str2;
            obj.f16227 = list;
            ProviderInfo providerInfo = (ProviderInfo) c2713.m6090(obj);
            if (providerInfo != null) {
                return providerInfo;
            }
            ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(str, 0);
            if (resolveContentProvider == null) {
                throw new PackageManager.NameNotFoundException("No package found for authority: " + str);
            }
            if (!resolveContentProvider.packageName.equals(str2)) {
                throw new PackageManager.NameNotFoundException("Found content provider " + str + ", but package was not " + str2);
            }
            Signature[] signatureArr = packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures;
            ArrayList arrayList = new ArrayList();
            for (Signature signature : signatureArr) {
                arrayList.add(signature.toByteArray());
            }
            Collections.sort(arrayList, r0);
            for (int i = 0; i < list.size(); i++) {
                ArrayList arrayList2 = new ArrayList((Collection) list.get(i));
                Collections.sort(arrayList2, r0);
                if (arrayList.size() == arrayList2.size()) {
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        if (!Arrays.equals((byte[]) arrayList.get(i2), (byte[]) arrayList2.get(i2))) {
                            break;
                        }
                    }
                    c2713.m6095(obj, resolveContentProvider);
                    return resolveContentProvider;
                }
            }
            Trace.endSection();
            return null;
        } finally {
            Trace.endSection();
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C3351 m8840(Context context, List list) {
        String str;
        Typeface m8677;
        Trace.beginSection(ʽ.ˊʻ("FontProvider.getFontFamilyResult"));
        try {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                C4366 c4366 = (C4366) list.get(i);
                if (Build.VERSION.SDK_INT < 31 || (m8677 = AbstractC4288.m8677((str = c4366.f16207))) == null || AbstractC4288.m8678(m8677) == null) {
                    ProviderInfo m8839 = m8839(context.getPackageManager(), c4366, context.getResources());
                    if (m8839 == null) {
                        return new C3351();
                    }
                    arrayList.add(m8838(context, c4366, m8839.authority));
                } else {
                    arrayList.add(new C4369[]{new C4369(str, c4366.f16211)});
                }
            }
            return new C3351(arrayList);
        } finally {
            Trace.endSection();
        }
    }
}
