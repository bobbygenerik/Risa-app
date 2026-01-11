package p012;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Pair;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import p152.AbstractC2444;
import p424.C5015;

/* renamed from: ʻᴵ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0905 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f3827;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f3828;

    public /* synthetic */ AbstractC0905(int i, int i2) {
        this.f3827 = i2;
        this.f3828 = i;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m3170(String str) {
        if (str.equalsIgnoreCase(":memory:")) {
            return;
        }
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean z2 = AbstractC2444.m5563(str.charAt(!z ? i : length), 32) <= 0;
            if (z) {
                if (!z2) {
                    break;
                } else {
                    length--;
                }
            } else if (z2) {
                i++;
            } else {
                z = true;
            }
        }
        if (str.subSequence(i, length + 1).toString().length() == 0) {
            return;
        }
        "deleting the database file: ".concat(str);
        try {
            SQLiteDatabase.deleteDatabase(new File(str));
        } catch (Exception e) {
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static String m3171(int i) {
        return "" + ((char) ((i >> 24) & 255)) + ((char) ((i >> 16) & 255)) + ((char) ((i >> 8) & 255)) + ((char) (i & 255));
    }

    public String toString() {
        switch (this.f3827) {
            case 0:
                return m3171(this.f3828);
            default:
                return super.toString();
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public abstract int mo3172();

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public abstract void mo3173(C5015 c5015);

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public abstract int mo3174();

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public void mo3175(C5015 c5015) {
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public void mo3176(C5015 c5015) {
        String str = "Corruption reported by sqlite on database: " + c5015 + ".path";
        SQLiteDatabase sQLiteDatabase = c5015.f18763;
        if (!sQLiteDatabase.isOpen()) {
            String path = sQLiteDatabase.getPath();
            if (path != null) {
                m3170(path);
                return;
            }
            return;
        }
        List<Pair<String, String>> list = null;
        try {
            try {
                list = sQLiteDatabase.getAttachedDbs();
            } catch (SQLiteException unused) {
            }
            try {
                c5015.close();
            } catch (IOException unused2) {
                if (list != null) {
                    return;
                }
            }
        } finally {
            if (list != null) {
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    m3170((String) ((Pair) it.next()).second);
                }
            } else {
                String path2 = sQLiteDatabase.getPath();
                if (path2 != null) {
                    m3170(path2);
                }
            }
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean m3177(int i) {
        return (this.f3828 & i) == i;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public abstract void mo3178(C5015 c5015, int i, int i2);

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public abstract int mo3179();

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public abstract int mo3180();

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public abstract int mo3181();

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public abstract void mo3182(C5015 c5015, int i, int i2);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m3183(int i) {
        this.f3828 = i | this.f3828;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public abstract void mo3184(C5015 c5015);
}
