package p049;

import android.content.SharedPreferences;
import android.util.Pair;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import p035.AbstractC1220;
import p255.C3370;
import p429.AbstractC5087;

/* renamed from: ʽـ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class SharedPreferencesEditorC1383 implements SharedPreferences.Editor {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final SharedPreferences.Editor f5434;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final SharedPreferencesC1382 f5435;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final AtomicBoolean f5433 = new AtomicBoolean(false);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final CopyOnWriteArrayList f5432 = new CopyOnWriteArrayList();

    public SharedPreferencesEditorC1383(SharedPreferencesC1382 sharedPreferencesC1382, SharedPreferences.Editor editor) {
        this.f5435 = sharedPreferencesC1382;
        this.f5434 = editor;
    }

    @Override // android.content.SharedPreferences.Editor
    public final void apply() {
        m4081();
        this.f5434.apply();
        m4080();
        this.f5432.clear();
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor clear() {
        this.f5433.set(true);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final boolean commit() {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f5432;
        m4081();
        try {
            return this.f5434.commit();
        } finally {
            m4080();
            copyOnWriteArrayList.clear();
        }
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putBoolean(String str, boolean z) {
        ByteBuffer allocate = ByteBuffer.allocate(5);
        allocate.putInt(5);
        allocate.put(z ? (byte) 1 : (byte) 0);
        m4079(str, allocate.array());
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putFloat(String str, float f) {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.putInt(4);
        allocate.putFloat(f);
        m4079(str, allocate.array());
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putInt(String str, int i) {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.putInt(2);
        allocate.putInt(i);
        m4079(str, allocate.array());
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putLong(String str, long j) {
        ByteBuffer allocate = ByteBuffer.allocate(12);
        allocate.putInt(3);
        allocate.putLong(j);
        m4079(str, allocate.array());
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putString(String str, String str2) {
        if (str2 == null) {
            str2 = "__NULL__";
        }
        byte[] bytes = str2.getBytes(StandardCharsets.UTF_8);
        int length = bytes.length;
        ByteBuffer allocate = ByteBuffer.allocate(length + 8);
        allocate.putInt(0);
        allocate.putInt(length);
        allocate.put(bytes);
        m4079(str, allocate.array());
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putStringSet(String str, Set set) {
        int i = 0;
        if (set == null) {
            set = new C3370(0);
            set.add("__NULL__");
        }
        ArrayList arrayList = new ArrayList(set.size());
        int size = set.size() * 4;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            byte[] bytes = ((String) it.next()).getBytes(StandardCharsets.UTF_8);
            arrayList.add(bytes);
            size += bytes.length;
        }
        ByteBuffer allocate = ByteBuffer.allocate(size + 4);
        allocate.putInt(1);
        int size2 = arrayList.size();
        while (i < size2) {
            Object obj = arrayList.get(i);
            i++;
            byte[] bArr = (byte[]) obj;
            allocate.putInt(bArr.length);
            allocate.put(bArr);
        }
        m4079(str, allocate.array());
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor remove(String str) {
        SharedPreferencesC1382 sharedPreferencesC1382 = this.f5435;
        sharedPreferencesC1382.getClass();
        if (SharedPreferencesC1382.m4075(str)) {
            throw new SecurityException(AbstractC1220.m3791(str, " is a reserved key for the encryption keyset."));
        }
        this.f5434.remove(sharedPreferencesC1382.m4078(str));
        this.f5432.add(str);
        return this;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m4079(String str, byte[] bArr) {
        SharedPreferencesC1382 sharedPreferencesC1382 = this.f5435;
        sharedPreferencesC1382.getClass();
        if (SharedPreferencesC1382.m4075(str)) {
            throw new SecurityException(AbstractC1220.m3791(str, " is a reserved key for the encryption keyset."));
        }
        this.f5432.add(str);
        if (str == null) {
            str = "__NULL__";
        }
        try {
            String m4078 = sharedPreferencesC1382.m4078(str);
            try {
                Pair pair = new Pair(m4078, new String(AbstractC5087.m9991(sharedPreferencesC1382.f5428.mo4896(bArr, m4078.getBytes(StandardCharsets.UTF_8))), "US-ASCII"));
                this.f5434.putString((String) pair.first, (String) pair.second);
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        } catch (GeneralSecurityException e2) {
            throw new SecurityException("Could not encrypt data: " + e2.getMessage(), e2);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m4080() {
        SharedPreferencesC1382 sharedPreferencesC1382 = this.f5435;
        Iterator it = sharedPreferencesC1382.f5430.iterator();
        while (it.hasNext()) {
            SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = (SharedPreferences.OnSharedPreferenceChangeListener) it.next();
            Iterator it2 = this.f5432.iterator();
            while (it2.hasNext()) {
                onSharedPreferenceChangeListener.onSharedPreferenceChanged(sharedPreferencesC1382, (String) it2.next());
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m4081() {
        if (this.f5433.getAndSet(false)) {
            SharedPreferencesC1382 sharedPreferencesC1382 = this.f5435;
            for (String str : ((HashMap) sharedPreferencesC1382.getAll()).keySet()) {
                if (!this.f5432.contains(str) && !SharedPreferencesC1382.m4075(str)) {
                    this.f5434.remove(sharedPreferencesC1382.m4078(str));
                }
            }
        }
    }
}
