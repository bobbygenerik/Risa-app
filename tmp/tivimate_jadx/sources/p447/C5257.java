package p447;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.SystemClock;
import android.support.v4.media.session.AbstractC0001;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.C0273;
import com.google.android.gms.internal.measurement.C0311;
import com.google.android.gms.internal.measurement.C0334;
import com.google.android.gms.internal.measurement.C0347;
import com.google.android.gms.internal.measurement.C0374;
import com.google.android.gms.internal.measurement.C0414;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import p035.AbstractC1220;
import p079.C1681;
import p137.AbstractC2305;
import p296.AbstractC3659;
import p347.C4279;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5257 extends AbstractC5277 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C5353 f19847;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C1681 f19848;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final String[] f19839 = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final String[] f19842 = {"associated_row_id", "ALTER TABLE upload_queue ADD COLUMN associated_row_id INTEGER;", "last_upload_timestamp", "ALTER TABLE upload_queue ADD COLUMN last_upload_timestamp INTEGER;"};

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final String[] f19838 = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final String[] f19844 = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;", "e_tag", "ALTER TABLE apps ADD COLUMN e_tag TEXT;", "session_stitching_token", "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;", "sgtm_upload_enabled", "ALTER TABLE apps ADD COLUMN sgtm_upload_enabled INTEGER;", "target_os_version", "ALTER TABLE apps ADD COLUMN target_os_version INTEGER;", "session_stitching_token_hash", "ALTER TABLE apps ADD COLUMN session_stitching_token_hash INTEGER;", "ad_services_version", "ALTER TABLE apps ADD COLUMN ad_services_version INTEGER;", "unmatched_first_open_without_ad_id", "ALTER TABLE apps ADD COLUMN unmatched_first_open_without_ad_id INTEGER;", "npa_metadata_value", "ALTER TABLE apps ADD COLUMN npa_metadata_value INTEGER;", "attribution_eligibility_status", "ALTER TABLE apps ADD COLUMN attribution_eligibility_status INTEGER;", "sgtm_preview_key", "ALTER TABLE apps ADD COLUMN sgtm_preview_key TEXT;", "dma_consent_state", "ALTER TABLE apps ADD COLUMN dma_consent_state INTEGER;", "daily_realtime_dcu_count", "ALTER TABLE apps ADD COLUMN daily_realtime_dcu_count INTEGER;", "bundle_delivery_index", "ALTER TABLE apps ADD COLUMN bundle_delivery_index INTEGER;", "serialized_npa_metadata", "ALTER TABLE apps ADD COLUMN serialized_npa_metadata TEXT;", "unmatched_pfo", "ALTER TABLE apps ADD COLUMN unmatched_pfo INTEGER;", "unmatched_uwa", "ALTER TABLE apps ADD COLUMN unmatched_uwa INTEGER;", "ad_campaign_info", "ALTER TABLE apps ADD COLUMN ad_campaign_info BLOB;", "daily_registered_triggers_count", "ALTER TABLE apps ADD COLUMN daily_registered_triggers_count INTEGER;", "client_upload_eligibility", "ALTER TABLE apps ADD COLUMN client_upload_eligibility INTEGER;", "gmp_version_for_remote_config", "ALTER TABLE apps ADD COLUMN gmp_version_for_remote_config INTEGER;"};

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static final String[] f19841 = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static final String[] f19843 = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};

    /* renamed from: ᵔי, reason: contains not printable characters */
    public static final String[] f19845 = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public static final String[] f19836 = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public static final String[] f19846 = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public static final String[] f19837 = {"consent_source", "ALTER TABLE consent_settings ADD COLUMN consent_source INTEGER;", "dma_consent_settings", "ALTER TABLE consent_settings ADD COLUMN dma_consent_settings TEXT;", "storage_consent_at_bundling", "ALTER TABLE consent_settings ADD COLUMN storage_consent_at_bundling TEXT;"};

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public static final String[] f19840 = {"idempotent", "CREATE INDEX IF NOT EXISTS trigger_uris_index ON trigger_uris (app_id);"};

    public C5257(C5337 c5337) {
        super(c5337);
        this.f19848 = new C1681(((C5322) ((ᵎﹶ) this).ʾˋ).f20206);
        ((C5322) ((ᵎﹶ) this).ʾˋ).getClass();
        this.f19847 = new C5353(this, ((C5322) ((ᵎﹶ) this).ʾˋ).f20184);
    }

    /* renamed from: ˆˎ, reason: contains not printable characters */
    public static final String m10393(List list) {
        return list.isEmpty() ? "" : AbstractC2305.m5378(" AND (upload_type IN (", TextUtils.join(", ", list), "))");
    }

    /* renamed from: יʿ, reason: contains not printable characters */
    public static final void m10394(ContentValues contentValues, Object obj) {
        AbstractC3659.m7680("value");
        AbstractC3659.m7687(obj);
        if (obj instanceof String) {
            contentValues.put("value", (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put("value", (Long) obj);
        } else {
            if (!(obj instanceof Double)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            contentValues.put("value", (Double) obj);
        }
    }

    /* renamed from: ʻʼ, reason: contains not printable characters */
    public final void m10395(String str, C5311 c5311) {
        AbstractC3659.m7687(str);
        ⁱᴵ();
        m10466();
        m10421(str, m10412(str));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("storage_consent_at_bundling", c5311.m10540());
        m10399(contentValues);
    }

    /* renamed from: ʻˆ, reason: contains not printable characters */
    public final void m10396() {
        m10466();
        m10428().setTransactionSuccessful();
    }

    /* renamed from: ʻᐧ, reason: contains not printable characters */
    public final C5245 m10397(long j, String str, boolean z, boolean z2, boolean z3, boolean z4) {
        return m10413(j, str, 1L, false, false, z, false, z2, z3, z4);
    }

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final long m10398(String str, C0347 c0347, String str2, Map map, EnumC5270 enumC5270, Long l) {
        int delete;
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        ⁱᴵ();
        m10466();
        AbstractC3659.m7687(c0347);
        AbstractC3659.m7680(str);
        ⁱᴵ();
        m10466();
        if (m10404()) {
            C5337 c5337 = this.f19910;
            long m9215 = c5337.f20304.f19765.m9215();
            C4279 c4279 = c5322.f20206;
            C5344 c5344 = c5322.f20193;
            c4279.getClass();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (Math.abs(elapsedRealtime - m9215) > ((Long) AbstractC5321.f20157.m10388(null)).longValue()) {
                c5337.f20304.f19765.m9216(elapsedRealtime);
                ⁱᴵ();
                m10466();
                if (m10404() && (delete = m10428().delete("upload_queue", m10406(), new String[0])) > 0) {
                    C5322.m10556(c5344);
                    c5344.f20350.m10216(Integer.valueOf(delete), "Deleted stale MeasurementBatch rows from upload_queue. rowsDeleted");
                }
                AbstractC3659.m7680(str);
                ⁱᴵ();
                m10466();
                try {
                    int m10576 = c5322.f20189.m10576(str, AbstractC5321.f20084);
                    if (m10576 > 0) {
                        m10428().delete("upload_queue", "rowid in (SELECT rowid FROM upload_queue WHERE app_id=? ORDER BY rowid DESC LIMIT -1 OFFSET ?)", new String[]{str, String.valueOf(m10576)});
                    }
                } catch (SQLiteException e) {
                    C5322.m10556(c5344);
                    c5344.f20343.m10214(C5344.m10722(str), e, "Error deleting over the limit queued batches. appId");
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            String str3 = (String) entry.getKey();
            String str4 = (String) entry.getValue();
            StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 1 + String.valueOf(str4).length());
            sb.append(str3);
            sb.append("=");
            sb.append(str4);
            arrayList.add(sb.toString());
        }
        byte[] m2019 = c0347.m2019();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("measurement_batch", m2019);
        contentValues.put("upload_uri", str2);
        StringBuilder sb2 = new StringBuilder();
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            while (true) {
                sb2.append((CharSequence) it.next());
                if (!it.hasNext()) {
                    break;
                }
                sb2.append((CharSequence) "\r\n");
            }
        }
        contentValues.put("upload_headers", sb2.toString());
        contentValues.put("upload_type", Integer.valueOf(enumC5270.f19902));
        C4279 c42792 = c5322.f20206;
        C5344 c53442 = c5322.f20193;
        c42792.getClass();
        contentValues.put("creation_timestamp", Long.valueOf(System.currentTimeMillis()));
        contentValues.put("retry_count", (Integer) 0);
        if (l != null) {
            contentValues.put("associated_row_id", l);
        }
        try {
            long insert = m10428().insert("upload_queue", null, contentValues);
            if (insert != -1) {
                return insert;
            }
            C5322.m10556(c53442);
            c53442.f20343.m10216(str, "Failed to insert MeasurementBatch (got -1) to upload_queue. appId");
            return -1L;
        } catch (SQLiteException e2) {
            C5322.m10556(c53442);
            c53442.f20343.m10214(str, e2, "Error storing MeasurementBatch to upload_queue. appId");
            return -1L;
        }
    }

    /* renamed from: ʽʾ, reason: contains not printable characters */
    public final void m10399(ContentValues contentValues) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        try {
            SQLiteDatabase m10428 = m10428();
            if (contentValues.getAsString("app_id") == null) {
                C5344 c5344 = c5322.f20193;
                C5322.m10556(c5344);
                c5344.f20342.m10216(C5344.m10722("app_id"), "Value of the primary key is not set.");
                return;
            }
            new StringBuilder(10).append("app_id = ?");
            if (m10428.update("consent_settings", contentValues, r6.toString(), new String[]{r5}) == 0 && m10428.insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                C5344 c53442 = c5322.f20193;
                C5322.m10556(c53442);
                c53442.f20343.m10214(C5344.m10722("consent_settings"), C5344.m10722("app_id"), "Failed to insert/update table (got -1). key");
            }
        } catch (SQLiteException e) {
            C5344 c53443 = c5322.f20193;
            C5322.m10556(c53443);
            c53443.f20343.m10215("Error storing into table. key", C5344.m10722("consent_settings"), C5344.m10722("app_id"), e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x004a, code lost:
    
        if (r2.moveToNext() != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x002d, code lost:
    
        if (r2.moveToFirst() != false) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x002f, code lost:
    
        r1 = r2.getString(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0033, code lost:
    
        if (r1 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0035, code lost:
    
        r1 = m10405("events", r13, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x003b, code lost:
    
        if (r1 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003d, code lost:
    
        m10418("events_snapshot", r1);
     */
    /* renamed from: ʽᐧ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m10400(java.lang.String r13) {
        /*
            r12 = this;
            java.lang.String r0 = "events_snapshot"
            r12.m10436(r0, r13)
            java.lang.String r1 = "name"
            java.util.List r1 = java.util.Collections.singletonList(r1)
            r2 = 0
            android.database.sqlite.SQLiteDatabase r3 = r12.m10428()     // Catch: java.lang.Throwable -> L41 android.database.sqlite.SQLiteException -> L44
            java.lang.String r4 = "events"
            r11 = 0
            java.lang.String[] r5 = new java.lang.String[r11]     // Catch: java.lang.Throwable -> L41 android.database.sqlite.SQLiteException -> L44
            java.lang.Object[] r1 = r1.toArray(r5)     // Catch: java.lang.Throwable -> L41 android.database.sqlite.SQLiteException -> L44
            r5 = r1
            java.lang.String[] r5 = (java.lang.String[]) r5     // Catch: java.lang.Throwable -> L41 android.database.sqlite.SQLiteException -> L44
            java.lang.String r6 = "app_id=?"
            java.lang.String[] r7 = new java.lang.String[]{r13}     // Catch: java.lang.Throwable -> L41 android.database.sqlite.SQLiteException -> L44
            r9 = 0
            r10 = 0
            r8 = 0
            android.database.Cursor r2 = r3.query(r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L41 android.database.sqlite.SQLiteException -> L44
            boolean r1 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L41 android.database.sqlite.SQLiteException -> L44
            if (r1 == 0) goto L61
        L2f:
            java.lang.String r1 = r2.getString(r11)     // Catch: java.lang.Throwable -> L41 android.database.sqlite.SQLiteException -> L44
            if (r1 == 0) goto L46
            java.lang.String r3 = "events"
            ﹶﾞ.ᵔﹳ r1 = r12.m10405(r3, r13, r1)     // Catch: java.lang.Throwable -> L41 android.database.sqlite.SQLiteException -> L44
            if (r1 == 0) goto L46
            r12.m10418(r0, r1)     // Catch: java.lang.Throwable -> L41 android.database.sqlite.SQLiteException -> L44
            goto L46
        L41:
            r0 = move-exception
            r13 = r0
            goto L67
        L44:
            r0 = move-exception
            goto L4d
        L46:
            boolean r1 = r2.moveToNext()     // Catch: java.lang.Throwable -> L41 android.database.sqlite.SQLiteException -> L44
            if (r1 != 0) goto L2f
            goto L61
        L4d:
            java.lang.Object r1 = r12.ʾˋ     // Catch: java.lang.Throwable -> L41
            ﹶﾞ.ᵎʻ r1 = (p447.C5322) r1     // Catch: java.lang.Throwable -> L41
            ﹶﾞ.ﹳـ r1 = r1.f20193     // Catch: java.lang.Throwable -> L41
            p447.C5322.m10556(r1)     // Catch: java.lang.Throwable -> L41
            ﹶﾞ.ʼˈ r1 = r1.f20343     // Catch: java.lang.Throwable -> L41
            java.lang.String r3 = "Error creating snapshot. appId"
            ﹶﾞ.ـˏ r13 = p447.C5344.m10722(r13)     // Catch: java.lang.Throwable -> L41
            r1.m10214(r13, r0, r3)     // Catch: java.lang.Throwable -> L41
        L61:
            if (r2 == 0) goto L66
            r2.close()
        L66:
            return
        L67:
            if (r2 == 0) goto L6c
            r2.close()
        L6c:
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5257.m10400(java.lang.String):void");
    }

    /* renamed from: ʾˏ, reason: contains not printable characters */
    public final boolean m10401(C5293 c5293) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        String str = c5293.f19966;
        ⁱᴵ();
        m10466();
        String str2 = c5293.f19967;
        String str3 = c5293.f19963;
        if (m10432(str2, str3) == null) {
            if (C5339.m10665(str3)) {
                if (m10434("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{str2}) >= Math.max(Math.min(c5322.f20189.m10576(str2, AbstractC5321.f20147), 100), 25)) {
                    return false;
                }
            } else if (!"_npa".equals(str3)) {
                long m10434 = m10434("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{str2, str});
                c5322.getClass();
                if (m10434 >= 25) {
                    return false;
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str2);
        contentValues.put("origin", str);
        contentValues.put("name", str3);
        contentValues.put("set_timestamp", Long.valueOf(c5293.f19964));
        m10394(contentValues, c5293.f19965);
        try {
            if (m10428().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10216(C5344.m10722(str2), "Failed to insert/update user property (got -1). appId");
            return true;
        } catch (SQLiteException e) {
            C5344 c53442 = c5322.f20193;
            C5322.m10556(c53442);
            c53442.f20343.m10214(C5344.m10722(str2), e, "Error storing user property. appId");
            return true;
        }
    }

    /* renamed from: ʿʽ, reason: contains not printable characters */
    public final C5285 m10402(String str, long j, byte[] bArr, String str2, String str3, int i, int i2, long j2, long j3, long j4) {
        EnumC5270 enumC5270;
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        if (TextUtils.isEmpty(str2)) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20340.m10217("Upload uri is null or empty. Destination is unknown. Dropping batch. ");
            return null;
        }
        try {
            C0374 c0374 = (C0374) C5239.m10253(C0347.m1598(), bArr);
            EnumC5270[] values = EnumC5270.values();
            int length = values.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    enumC5270 = EnumC5270.f19899;
                    break;
                }
                enumC5270 = values[i3];
                if (enumC5270.f19902 == i) {
                    break;
                }
                i3++;
            }
            if (enumC5270 != EnumC5270.f19895 && enumC5270 != EnumC5270.f19898 && i2 > 0) {
                ArrayList arrayList = new ArrayList();
                Iterator it = DesugarCollections.unmodifiableList(((C0347) c0374.f2260).m1601()).iterator();
                while (it.hasNext()) {
                    C0273 c0273 = (C0273) ((C0311) it.next()).m1227();
                    c0273.m1947();
                    ((C0311) c0273.f2260).m1410(i2);
                    arrayList.add((C0311) c0273.m1948());
                }
                c0374.m1947();
                ((C0347) c0374.f2260).m1608();
                c0374.m1947();
                ((C0347) c0374.f2260).m1604(arrayList);
            }
            HashMap hashMap = new HashMap();
            if (str3 != null) {
                String[] split = str3.split("\r\n");
                int length2 = split.length;
                int i4 = 0;
                while (true) {
                    if (i4 >= length2) {
                        break;
                    }
                    String str4 = split[i4];
                    if (str4.isEmpty()) {
                        break;
                    }
                    String[] split2 = str4.split("=", 2);
                    if (split2.length != 2) {
                        C5344 c53442 = c5322.f20193;
                        C5322.m10556(c53442);
                        c53442.f20343.m10216(str4, "Invalid upload header: ");
                        break;
                    }
                    hashMap.put(split2[0], split2[1]);
                    i4++;
                }
            }
            return new C5285(j, (C0347) c0374.m1948(), str2, hashMap, enumC5270, j2, j3, j4, i2);
        } catch (IOException e) {
            C5344 c53443 = c5322.f20193;
            C5322.m10556(c53443);
            c53443.f20343.m10214(str, e, "Failed to queued MeasurementBatch from upload_queue. appId");
            return null;
        }
    }

    /* renamed from: ʿˎ, reason: contains not printable characters */
    public final void m10403(String str, String str2) {
        AbstractC3659.m7680(str);
        AbstractC3659.m7680(str2);
        ⁱᴵ();
        m10466();
        try {
            m10428().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10215("Error deleting conditional property", C5344.m10722(str), c5322.f20199.m10469(str2), e);
        }
    }

    /* renamed from: ˆʻ, reason: contains not printable characters */
    public final boolean m10404() {
        return ((C5322) ((ᵎﹶ) this).ʾˋ).f20184.getDatabasePath("google_app_measurement.db").exists();
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0127  */
    /* renamed from: ˆˑ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p447.C5333 m10405(java.lang.String r31, java.lang.String r32, java.lang.String r33) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5257.m10405(java.lang.String, java.lang.String, java.lang.String):ﹶﾞ.ᵔﹳ");
    }

    /* renamed from: ˆﹳ, reason: contains not printable characters */
    public final String m10406() {
        ((C5322) ((ᵎﹶ) this).ʾˋ).f20206.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        Locale locale = Locale.US;
        Long l = (Long) AbstractC5321.f20131.m10388(null);
        l.getClass();
        String str = "(upload_type = 1 AND ABS(creation_timestamp - " + currentTimeMillis + ") > " + l + ")";
        String m8 = AbstractC0001.m8(AbstractC1220.m3770(currentTimeMillis, "(upload_type != 1 AND ABS(creation_timestamp - ", ") > "), ((Long) AbstractC5321.f20071.m10388(null)).longValue(), ")");
        StringBuilder sb = new StringBuilder(AbstractC1220.m3796(str.length(), 5, m8.length(), 1));
        sb.append("(");
        sb.append(str);
        sb.append(" OR ");
        sb.append(m8);
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: ˈـ, reason: contains not printable characters */
    public final void m10407(Long l) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        ⁱᴵ();
        m10466();
        try {
            if (m10428().delete("upload_queue", "rowid=?", new String[]{l.toString()}) != 1) {
                C5344 c5344 = c5322.f20193;
                C5322.m10556(c5344);
                c5344.f20348.m10217("Deleted fewer rows from upload_queue than expected");
            }
        } catch (SQLiteException e) {
            C5344 c53442 = c5322.f20193;
            C5322.m10556(c53442);
            c53442.f20343.m10216(e, "Failed to delete a MeasurementBatch in a upload_queue table");
            throw e;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r9v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* renamed from: ˉʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m10408(java.lang.String r21, long r22, long r24, p073.C1643 r26) {
        /*
            Method dump skipped, instructions count: 594
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5257.m10408(java.lang.String, long, long, ʾⁱ.ˈ):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0117 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x029c A[Catch: SQLiteException -> 0x02b8, TRY_LEAVE, TryCatch #0 {SQLiteException -> 0x02b8, blocks: (B:78:0x0281, B:80:0x029c), top: B:77:0x0281 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01de  */
    /* renamed from: ˊˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m10409(java.lang.String r26, java.lang.Long r27, java.lang.String r28, android.os.Bundle r29) {
        /*
            Method dump skipped, instructions count: 725
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5257.m10409(java.lang.String, java.lang.Long, java.lang.String, android.os.Bundle):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b1, code lost:
    
        p447.C5322.m10556(r13);
        r13.f20343.m10216(1000, "Read more than the max allowed user properties, ignoring excess");
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x012e  */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.List] */
    /* renamed from: ˊـ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List m10410(java.lang.String r23, java.lang.String r24, java.lang.String r25) {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5257.m10410(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    /* renamed from: ˊﹳ, reason: contains not printable characters */
    public final String m10411(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                cursor = m10428().rawQuery(str, strArr);
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return "";
                }
                String string = cursor.getString(0);
                cursor.close();
                return string;
            } catch (SQLiteException e) {
                C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
                C5322.m10556(c5344);
                c5344.f20343.m10214(str, e, "Database error");
                throw e;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0059, code lost:
    
        if (r5 == 0) goto L23;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0064  */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v9, types: [android.database.Cursor] */
    /* renamed from: ˊﾞ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p447.C5311 m10412(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.Object r0 = r4.ʾˋ
            ﹶﾞ.ᵎʻ r0 = (p447.C5322) r0
            p296.AbstractC3659.m7687(r5)
            r4.ⁱᴵ()
            r4.m10466()
            java.lang.String[] r5 = new java.lang.String[]{r5}
            java.lang.String r1 = "select consent_state, consent_source from consent_settings where app_id=? limit 1;"
            r2 = 0
            android.database.sqlite.SQLiteDatabase r3 = r4.m10428()     // Catch: java.lang.Throwable -> L47 android.database.sqlite.SQLiteException -> L4a
            android.database.Cursor r5 = r3.rawQuery(r1, r5)     // Catch: java.lang.Throwable -> L47 android.database.sqlite.SQLiteException -> L4a
            boolean r1 = r5.moveToFirst()     // Catch: java.lang.Throwable -> L32 android.database.sqlite.SQLiteException -> L34
            if (r1 != 0) goto L36
            ﹶﾞ.ﹳـ r1 = r0.f20193     // Catch: java.lang.Throwable -> L32 android.database.sqlite.SQLiteException -> L34
            p447.C5322.m10556(r1)     // Catch: java.lang.Throwable -> L32 android.database.sqlite.SQLiteException -> L34
            ﹶﾞ.ʼˈ r1 = r1.f20350     // Catch: java.lang.Throwable -> L32 android.database.sqlite.SQLiteException -> L34
            java.lang.String r3 = "No data found"
            r1.m10217(r3)     // Catch: java.lang.Throwable -> L32 android.database.sqlite.SQLiteException -> L34
        L2e:
            r5.close()
            goto L5c
        L32:
            r0 = move-exception
            goto L45
        L34:
            r1 = move-exception
            goto L4d
        L36:
            r1 = 0
            java.lang.String r1 = r5.getString(r1)     // Catch: java.lang.Throwable -> L32 android.database.sqlite.SQLiteException -> L34
            r3 = 1
            int r3 = r5.getInt(r3)     // Catch: java.lang.Throwable -> L32 android.database.sqlite.SQLiteException -> L34
            ﹶﾞ.ᐧˎ r2 = p447.C5311.m10530(r3, r1)     // Catch: java.lang.Throwable -> L32 android.database.sqlite.SQLiteException -> L34
            goto L2e
        L45:
            r2 = r5
            goto L62
        L47:
            r5 = move-exception
            r0 = r5
            goto L62
        L4a:
            r5 = move-exception
            r1 = r5
            r5 = r2
        L4d:
            ﹶﾞ.ﹳـ r0 = r0.f20193     // Catch: java.lang.Throwable -> L32
            p447.C5322.m10556(r0)     // Catch: java.lang.Throwable -> L32
            ﹶﾞ.ʼˈ r0 = r0.f20343     // Catch: java.lang.Throwable -> L32
            java.lang.String r3 = "Error querying database."
            r0.m10216(r1, r3)     // Catch: java.lang.Throwable -> L32
            if (r5 == 0) goto L5c
            goto L2e
        L5c:
            if (r2 != 0) goto L61
            ﹶﾞ.ᐧˎ r5 = p447.C5311.f20017
            return r5
        L61:
            return r2
        L62:
            if (r2 == 0) goto L67
            r2.close()
        L67:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5257.m10412(java.lang.String):ﹶﾞ.ᐧˎ");
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, ﹶﾞ.ˆʾ] */
    /* renamed from: ˋ, reason: contains not printable characters */
    public final C5245 m10413(long j, String str, long j2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        AbstractC3659.m7680(str);
        ⁱᴵ();
        m10466();
        String[] strArr = {str};
        ?? obj = new Object();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase m10428 = m10428();
                cursor = m10428.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count", "daily_realtime_dcu_count", "daily_registered_triggers_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (cursor.moveToFirst()) {
                    if (cursor.getLong(0) == j) {
                        obj.f19760 = cursor.getLong(1);
                        obj.f19761 = cursor.getLong(2);
                        obj.f19756 = cursor.getLong(3);
                        obj.f19757 = cursor.getLong(4);
                        obj.f19758 = cursor.getLong(5);
                        obj.f19762 = cursor.getLong(6);
                        obj.f19759 = cursor.getLong(7);
                    }
                    if (z) {
                        obj.f19760 += j2;
                    }
                    if (z2) {
                        obj.f19761 += j2;
                    }
                    if (z3) {
                        obj.f19756 += j2;
                    }
                    if (z4) {
                        obj.f19757 += j2;
                    }
                    if (z5) {
                        obj.f19758 += j2;
                    }
                    if (z6) {
                        obj.f19762 += j2;
                    }
                    if (z7) {
                        obj.f19759 += j2;
                    }
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("day", Long.valueOf(j));
                    contentValues.put("daily_public_events_count", Long.valueOf(obj.f19761));
                    contentValues.put("daily_events_count", Long.valueOf(obj.f19760));
                    contentValues.put("daily_conversions_count", Long.valueOf(obj.f19756));
                    contentValues.put("daily_error_events_count", Long.valueOf(obj.f19757));
                    contentValues.put("daily_realtime_events_count", Long.valueOf(obj.f19758));
                    contentValues.put("daily_realtime_dcu_count", Long.valueOf(obj.f19762));
                    contentValues.put("daily_registered_triggers_count", Long.valueOf(obj.f19759));
                    m10428.update("apps", contentValues, "app_id=?", strArr);
                } else {
                    C5344 c5344 = c5322.f20193;
                    C5322.m10556(c5344);
                    c5344.f20348.m10216(C5344.m10722(str), "Not updating daily counts, app is not known. appId");
                }
            } catch (SQLiteException e) {
                C5344 c53442 = c5322.f20193;
                C5322.m10556(c53442);
                c53442.f20343.m10214(C5344.m10722(str), e, "Error updating daily counts. appId");
            }
            if (cursor != null) {
                cursor.close();
            }
            return obj;
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    @Override // p447.AbstractC5277
    /* renamed from: ˋˊ */
    public final void mo10191() {
    }

    /* renamed from: ˋـ, reason: contains not printable characters */
    public final Object m10414(Cursor cursor, int i) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        int type = cursor.getType(i);
        if (type == 0) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10217("Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i));
        }
        if (type == 3) {
            return cursor.getString(i);
        }
        if (type != 4) {
            C5344 c53442 = c5322.f20193;
            C5322.m10556(c53442);
            c53442.f20343.m10216(Integer.valueOf(type), "Loaded invalid unknown value type, ignoring it");
            return null;
        }
        C5344 c53443 = c5322.f20193;
        C5322.m10556(c53443);
        c53443.f20343.m10217("Loaded invalid blob type value, ignoring it");
        return null;
    }

    /* renamed from: ˎʼ, reason: contains not printable characters */
    public final void m10415() {
        m10466();
        m10428().beginTransaction();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003f  */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* renamed from: ˎʾ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m10416() {
        /*
            r6 = this;
            android.database.sqlite.SQLiteDatabase r0 = r6.m10428()
            r1 = 0
            java.lang.String r2 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            android.database.Cursor r0 = r0.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L22 android.database.sqlite.SQLiteException -> L24
            boolean r2 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L1a android.database.sqlite.SQLiteException -> L1c
            if (r2 == 0) goto L37
            r2 = 0
            java.lang.String r1 = r0.getString(r2)     // Catch: java.lang.Throwable -> L1a android.database.sqlite.SQLiteException -> L1c
            r0.close()
            return r1
        L1a:
            r1 = move-exception
            goto L1e
        L1c:
            r2 = move-exception
            goto L27
        L1e:
            r5 = r1
            r1 = r0
            r0 = r5
            goto L3d
        L22:
            r0 = move-exception
            goto L3d
        L24:
            r0 = move-exception
            r2 = r0
            r0 = r1
        L27:
            java.lang.Object r3 = r6.ʾˋ     // Catch: java.lang.Throwable -> L1a
            ﹶﾞ.ᵎʻ r3 = (p447.C5322) r3     // Catch: java.lang.Throwable -> L1a
            ﹶﾞ.ﹳـ r3 = r3.f20193     // Catch: java.lang.Throwable -> L1a
            p447.C5322.m10556(r3)     // Catch: java.lang.Throwable -> L1a
            ﹶﾞ.ʼˈ r3 = r3.f20343     // Catch: java.lang.Throwable -> L1a
            java.lang.String r4 = "Database error getting next bundle app id"
            r3.m10216(r2, r4)     // Catch: java.lang.Throwable -> L1a
        L37:
            if (r0 == 0) goto L3c
            r0.close()
        L3c:
            return r1
        L3d:
            if (r1 == 0) goto L42
            r1.close()
        L42:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5257.m10416():java.lang.String");
    }

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public final void m10417() {
        ⁱᴵ();
        m10466();
        if (m10404()) {
            C5337 c5337 = this.f19910;
            long m9215 = c5337.f20304.f19768.m9215();
            C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
            c5322.f20206.getClass();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (Math.abs(elapsedRealtime - m9215) > ((Long) AbstractC5321.f20157.m10388(null)).longValue()) {
                c5337.f20304.f19768.m9216(elapsedRealtime);
                ⁱᴵ();
                m10466();
                if (m10404()) {
                    SQLiteDatabase m10428 = m10428();
                    c5322.f20206.getClass();
                    int delete = m10428.delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(System.currentTimeMillis()), String.valueOf(((Long) AbstractC5321.f20071.m10388(null)).longValue())});
                    if (delete > 0) {
                        C5344 c5344 = c5322.f20193;
                        C5322.m10556(c5344);
                        c5344.f20350.m10216(Integer.valueOf(delete), "Deleted stale rows. rowsDeleted");
                    }
                }
            }
        }
    }

    /* renamed from: ˎـ, reason: contains not printable characters */
    public final void m10418(String str, C5333 c5333) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        AbstractC3659.m7687(c5333);
        ⁱᴵ();
        m10466();
        ContentValues contentValues = new ContentValues();
        String str2 = c5333.f20258;
        contentValues.put("app_id", str2);
        contentValues.put("name", c5333.f20257);
        contentValues.put("lifetime_count", Long.valueOf(c5333.f20250));
        contentValues.put("current_bundle_count", Long.valueOf(c5333.f20252));
        contentValues.put("last_fire_timestamp", Long.valueOf(c5333.f20259));
        contentValues.put("last_bundled_timestamp", Long.valueOf(c5333.f20255));
        contentValues.put("last_bundled_day", c5333.f20256);
        contentValues.put("last_sampled_complex_event_id", c5333.f20249);
        contentValues.put("last_sampling_rate", c5333.f20251);
        contentValues.put("current_session_count", Long.valueOf(c5333.f20253));
        Boolean bool = c5333.f20254;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (m10428().insertWithOnConflict(str, null, contentValues, 5) == -1) {
                C5344 c5344 = c5322.f20193;
                C5322.m10556(c5344);
                c5344.f20343.m10216(C5344.m10722(str2), "Failed to insert/update event aggregates (got -1). appId");
            }
        } catch (SQLiteException e) {
            C5344 c53442 = c5322.f20193;
            C5322.m10556(c53442);
            c53442.f20343.m10214(C5344.m10722(str2), e, "Error storing event aggregates. appId");
        }
    }

    /* renamed from: ˎᵎ, reason: contains not printable characters */
    public final void m10419(String str, String str2) {
        AbstractC3659.m7680(str);
        AbstractC3659.m7680(str2);
        ⁱᴵ();
        m10466();
        try {
            m10428().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10215("Error deleting user property. appId", C5344.m10722(str), c5322.f20199.m10469(str2), e);
        }
    }

    /* renamed from: ˏʻ, reason: contains not printable characters */
    public final void m10420() {
        m10466();
        m10428().endTransaction();
    }

    /* renamed from: ˏⁱ, reason: contains not printable characters */
    public final void m10421(String str, C5311 c5311) {
        AbstractC3659.m7687(str);
        AbstractC3659.m7687(c5311);
        ⁱᴵ();
        m10466();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("consent_state", c5311.m10540());
        contentValues.put("consent_source", Integer.valueOf(c5311.f20018));
        m10399(contentValues);
    }

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public final void m10422(long j) {
        ⁱᴵ();
        m10466();
        try {
            if (m10428().delete("queue", "rowid=?", new String[]{String.valueOf(j)}) == 1) {
            } else {
                throw new SQLiteException("Deleted fewer rows from queue than expected");
            }
        } catch (SQLiteException e) {
            C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10216(e, "Failed to delete a bundle in a queue table");
            throw e;
        }
    }

    /* JADX WARN: Not initialized variable reg: 10, insn: 0x00f6: MOVE (r9 I:??[OBJECT, ARRAY]) = (r10 I:??[OBJECT, ARRAY]), block:B:37:0x00f6 */
    /* JADX WARN: Removed duplicated region for block: B:39:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0116  */
    /* renamed from: ˑˉ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p447.C5287 m10423(java.lang.String r27, java.lang.String r28) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5257.m10423(java.lang.String, java.lang.String):ﹶﾞ.ˑﹳ");
    }

    /* renamed from: ˑﹶ, reason: contains not printable characters */
    public final long m10424(String str, String[] strArr, long j) {
        Cursor cursor = null;
        try {
            try {
                cursor = m10428().rawQuery(str, strArr);
                if (cursor.moveToFirst()) {
                    j = cursor.getLong(0);
                }
                cursor.close();
                return j;
            } catch (SQLiteException e) {
                C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
                C5322.m10556(c5344);
                c5344.f20343.m10214(str, e, "Database error");
                throw e;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00de  */
    /* renamed from: יˉ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List m10425(java.lang.String r19, p447.C5230 r20, int r21) {
        /*
            r18 = this;
            p296.AbstractC3659.m7680(r19)
            r18.ⁱᴵ()
            r18.m10466()
            java.lang.String r0 = " AND NOT "
            java.lang.String r1 = "app_id=?"
            r2 = 0
            android.database.sqlite.SQLiteDatabase r3 = r18.m10428()     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            java.lang.String r4 = "upload_queue"
            java.lang.String r5 = "rowId"
            java.lang.String r6 = "app_id"
            java.lang.String r7 = "measurement_batch"
            java.lang.String r8 = "upload_uri"
            java.lang.String r9 = "upload_headers"
            java.lang.String r10 = "upload_type"
            java.lang.String r11 = "retry_count"
            java.lang.String r12 = "creation_timestamp"
            java.lang.String r13 = "associated_row_id"
            java.lang.String r14 = "last_upload_timestamp"
            java.lang.String[] r5 = new java.lang.String[]{r5, r6, r7, r8, r9, r10, r11, r12, r13, r14}     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            r6 = r20
            java.util.List r6 = r6.f19666     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            java.lang.String r6 = m10393(r6)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            java.lang.String r7 = r18.m10406()     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            int r8 = r6.length()     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            int r8 = r8 + 17
            int r9 = r7.length()     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            int r8 = r8 + r9
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            r9.<init>(r8)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            r9.append(r1)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            r9.append(r6)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            r9.append(r0)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            r9.append(r7)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            java.lang.String r6 = r9.toString()     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            java.lang.String[] r7 = new java.lang.String[]{r19}     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            java.lang.String r10 = "creation_timestamp ASC"
            if (r21 <= 0) goto L66
            java.lang.String r0 = java.lang.String.valueOf(r21)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            r11 = r0
            goto L67
        L66:
            r11 = r2
        L67:
            r8 = 0
            r9 = 0
            android.database.Cursor r2 = r3.query(r4, r5, r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            r0.<init>()     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
        L72:
            boolean r1 = r2.moveToNext()     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            if (r1 == 0) goto Lb9
            r1 = 0
            long r5 = r2.getLong(r1)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            r1 = 2
            byte[] r7 = r2.getBlob(r1)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            r1 = 3
            java.lang.String r8 = r2.getString(r1)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            r1 = 4
            java.lang.String r9 = r2.getString(r1)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            r1 = 5
            int r10 = r2.getInt(r1)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            r1 = 6
            int r11 = r2.getInt(r1)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            r1 = 7
            long r12 = r2.getLong(r1)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            r1 = 8
            long r14 = r2.getLong(r1)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            r1 = 9
            long r16 = r2.getLong(r1)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            r3 = r18
            r4 = r19
            ﹶﾞ.ˑˉ r1 = r3.m10402(r4, r5, r7, r8, r9, r10, r11, r12, r14, r16)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            if (r1 == 0) goto L72
            r0.add(r1)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb7
            goto L72
        Lb5:
            r0 = move-exception
            goto Lbc
        Lb7:
            r0 = move-exception
            goto Lbf
        Lb9:
            r3 = r18
            goto Ld5
        Lbc:
            r3 = r18
            goto Ldc
        Lbf:
            r3 = r18
            java.lang.Object r1 = r3.ʾˋ     // Catch: java.lang.Throwable -> Ldb
            ﹶﾞ.ᵎʻ r1 = (p447.C5322) r1     // Catch: java.lang.Throwable -> Ldb
            ﹶﾞ.ﹳـ r1 = r1.f20193     // Catch: java.lang.Throwable -> Ldb
            p447.C5322.m10556(r1)     // Catch: java.lang.Throwable -> Ldb
            ﹶﾞ.ʼˈ r1 = r1.f20343     // Catch: java.lang.Throwable -> Ldb
            java.lang.String r4 = "Error to querying MeasurementBatch from upload_queue. appId"
            r5 = r19
            r1.m10214(r5, r0, r4)     // Catch: java.lang.Throwable -> Ldb
            java.util.List r0 = java.util.Collections.EMPTY_LIST     // Catch: java.lang.Throwable -> Ldb
        Ld5:
            if (r2 == 0) goto Lda
            r2.close()
        Lda:
            return r0
        Ldb:
            r0 = move-exception
        Ldc:
            if (r2 == 0) goto Le1
            r2.close()
        Le1:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5257.m10425(java.lang.String, ﹶﾞ.ʽᐧ, int):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x008e, code lost:
    
        r20 = r12.getString(5);
        r22 = r12.getLong(6);
        r3 = r28.f19910.f20295;
        p447.C5337.m10599(r3);
        r4 = r12.getBlob(7);
        r5 = p447.C5279.CREATOR;
        r21 = (p447.C5279) r3.m10290(r4, r5);
        r17 = r12.getLong(8);
        p447.C5337.m10599(r3);
        r24 = (p447.C5279) r3.m10290(r12.getBlob(9), r5);
        r6 = r12.getLong(10);
        r25 = r12.getLong(11);
        p447.C5337.m10599(r3);
        r0.add(new p447.C5287(r14, r15, new p447.C5241(r6, r8, r9, r15), r17, r19, r20, r21, r22, r24, r25, (p447.C5279) r3.m10290(r12.getBlob(12), r5)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x00f9, code lost:
    
        if (r12.moveToNext() != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x008c, code lost:
    
        r19 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0056, code lost:
    
        r3 = r2.f20193;
        p447.C5322.m10556(r3);
        r3.f20343.m10216(1000, "Read more than the max allowed conditional properties, ignoring extra");
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x004c, code lost:
    
        if (r12.moveToFirst() != false) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0054, code lost:
    
        if (r0.size() < 1000) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x006e, code lost:
    
        r14 = r12.getString(0);
        r15 = r12.getString(1);
        r9 = r12.getString(2);
        r8 = m10414(r12, 3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0087, code lost:
    
        if (r12.getInt(4) == 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0089, code lost:
    
        r19 = true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.List] */
    /* renamed from: יˑ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List m10426(java.lang.String r29, java.lang.String[] r30) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5257.m10426(java.lang.String, java.lang.String[]):java.util.List");
    }

    /* renamed from: יי, reason: contains not printable characters */
    public final List m10427(String str, String str2, String str3) {
        AbstractC3659.m7680(str);
        ⁱᴵ();
        m10466();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            sb.append(" and name glob ?");
        }
        return m10426(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* renamed from: יⁱ, reason: contains not printable characters */
    public final SQLiteDatabase m10428() {
        ⁱᴵ();
        try {
            return this.f19847.getWritableDatabase();
        } catch (SQLiteException e) {
            C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
            C5322.m10556(c5344);
            c5344.f20348.m10216(e, "Error opening database");
            throw e;
        }
    }

    /* renamed from: ـʻ, reason: contains not printable characters */
    public final void m10429(String str, C5272 c5272) {
        ⁱᴵ();
        m10466();
        AbstractC3659.m7680(str);
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        C4279 c4279 = c5322.f20206;
        C5344 c5344 = c5322.f20193;
        c4279.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        C5254 c5254 = AbstractC5321.f20115;
        long longValue = currentTimeMillis - ((Long) c5254.m10388(null)).longValue();
        long j = c5272.f19905;
        if (j < longValue || j > ((Long) c5254.m10388(null)).longValue() + currentTimeMillis) {
            C5322.m10556(c5344);
            c5344.f20348.m10215("Storing trigger URI outside of the max retention time span. appId, now, timestamp", C5344.m10722(str), Long.valueOf(currentTimeMillis), Long.valueOf(j));
        }
        C5322.m10556(c5344);
        c5344.f20350.m10217("Saving trigger URI");
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("trigger_uri", c5272.f19904);
        contentValues.put("source", Integer.valueOf(c5272.f19903));
        contentValues.put("timestamp_millis", Long.valueOf(j));
        try {
            if (m10428().insert("trigger_uris", null, contentValues) == -1) {
                C5322.m10556(c5344);
                c5344.f20343.m10216(C5344.m10722(str), "Failed to insert trigger URI (got -1). appId");
            }
        } catch (SQLiteException e) {
            C5322.m10556(c5344);
            c5344.f20343.m10214(C5344.m10722(str), e, "Error storing trigger URI. appId");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009e  */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.List] */
    /* renamed from: ـˑ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List m10430(java.lang.String r13) {
        /*
            r12 = this;
            java.lang.Object r0 = r12.ʾˋ
            r1 = r0
            ﹶﾞ.ᵎʻ r1 = (p447.C5322) r1
            p296.AbstractC3659.m7680(r13)
            r12.ⁱᴵ()
            r12.m10466()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.String r10 = "1000"
            r11 = 0
            android.database.sqlite.SQLiteDatabase r2 = r12.m10428()     // Catch: java.lang.Throwable -> L70 android.database.sqlite.SQLiteException -> L87
            java.lang.String r3 = "user_attributes"
            java.lang.String r4 = "name"
            java.lang.String r5 = "origin"
            java.lang.String r6 = "set_timestamp"
            java.lang.String r7 = "value"
            java.lang.String[] r4 = new java.lang.String[]{r4, r5, r6, r7}     // Catch: java.lang.Throwable -> L70 android.database.sqlite.SQLiteException -> L87
            java.lang.String r5 = "app_id=?"
            java.lang.String[] r6 = new java.lang.String[]{r13}     // Catch: java.lang.Throwable -> L70 android.database.sqlite.SQLiteException -> L87
            java.lang.String r9 = "rowid"
            r1.getClass()     // Catch: java.lang.Throwable -> L70 android.database.sqlite.SQLiteException -> L87
            r7 = 0
            r8 = 0
            android.database.Cursor r11 = r2.query(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L70 android.database.sqlite.SQLiteException -> L87
            boolean r2 = r11.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L4f java.lang.Throwable -> L70
            if (r2 == 0) goto L9c
        L3f:
            r2 = 0
            java.lang.String r6 = r11.getString(r2)     // Catch: android.database.sqlite.SQLiteException -> L4f java.lang.Throwable -> L70
            r2 = 1
            java.lang.String r2 = r11.getString(r2)     // Catch: android.database.sqlite.SQLiteException -> L4f java.lang.Throwable -> L70
            if (r2 != 0) goto L4d
            java.lang.String r2 = ""
        L4d:
            r5 = r2
            goto L52
        L4f:
            r0 = move-exception
            r4 = r13
            goto L8a
        L52:
            r2 = 2
            long r7 = r11.getLong(r2)     // Catch: android.database.sqlite.SQLiteException -> L4f java.lang.Throwable -> L70
            r2 = 3
            java.lang.Object r9 = r12.m10414(r11, r2)     // Catch: android.database.sqlite.SQLiteException -> L4f java.lang.Throwable -> L70
            if (r9 != 0) goto L73
            ﹶﾞ.ﹳـ r2 = r1.f20193     // Catch: android.database.sqlite.SQLiteException -> L4f java.lang.Throwable -> L70
            p447.C5322.m10556(r2)     // Catch: android.database.sqlite.SQLiteException -> L4f java.lang.Throwable -> L70
            ﹶﾞ.ʼˈ r2 = r2.f20343     // Catch: android.database.sqlite.SQLiteException -> L4f java.lang.Throwable -> L70
            java.lang.String r3 = "Read invalid user property value, ignoring it. appId"
            ﹶﾞ.ـˏ r4 = p447.C5344.m10722(r13)     // Catch: android.database.sqlite.SQLiteException -> L4f java.lang.Throwable -> L70
            r2.m10216(r4, r3)     // Catch: android.database.sqlite.SQLiteException -> L4f java.lang.Throwable -> L70
            r4 = r13
            goto L7c
        L70:
            r0 = move-exception
            r13 = r0
            goto La2
        L73:
            ﹶﾞ.יי r3 = new ﹶﾞ.יי     // Catch: android.database.sqlite.SQLiteException -> L4f java.lang.Throwable -> L70
            r4 = r13
            r3.<init>(r4, r5, r6, r7, r9)     // Catch: java.lang.Throwable -> L70 android.database.sqlite.SQLiteException -> L85
            r0.add(r3)     // Catch: java.lang.Throwable -> L70 android.database.sqlite.SQLiteException -> L85
        L7c:
            boolean r13 = r11.moveToNext()     // Catch: java.lang.Throwable -> L70 android.database.sqlite.SQLiteException -> L85
            if (r13 != 0) goto L83
            goto L9c
        L83:
            r13 = r4
            goto L3f
        L85:
            r0 = move-exception
            goto L8a
        L87:
            r0 = move-exception
            r4 = r13
            r13 = r0
        L8a:
            ﹶﾞ.ﹳـ r13 = r1.f20193     // Catch: java.lang.Throwable -> L70
            p447.C5322.m10556(r13)     // Catch: java.lang.Throwable -> L70
            ﹶﾞ.ʼˈ r13 = r13.f20343     // Catch: java.lang.Throwable -> L70
            java.lang.String r1 = "Error querying user properties. appId"
            ﹶﾞ.ـˏ r2 = p447.C5344.m10722(r4)     // Catch: java.lang.Throwable -> L70
            r13.m10214(r2, r0, r1)     // Catch: java.lang.Throwable -> L70
            java.util.List r0 = java.util.Collections.EMPTY_LIST     // Catch: java.lang.Throwable -> L70
        L9c:
            if (r11 == 0) goto La1
            r11.close()
        La1:
            return r0
        La2:
            if (r11 == 0) goto La7
            r11.close()
        La7:
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5257.m10430(java.lang.String):java.util.List");
    }

    /* renamed from: ٴʿ, reason: contains not printable characters */
    public final long m10431(String str) {
        AbstractC3659.m7680(str);
        return m10424("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0097  */
    /* renamed from: ᐧˏ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p447.C5293 m10432(java.lang.String r12, java.lang.String r13) {
        /*
            r11 = this;
            java.lang.Object r0 = r11.ʾˋ
            r1 = r0
            ﹶﾞ.ᵎʻ r1 = (p447.C5322) r1
            p296.AbstractC3659.m7680(r12)
            p296.AbstractC3659.m7680(r13)
            r11.ⁱᴵ()
            r11.m10466()
            r2 = 0
            android.database.sqlite.SQLiteDatabase r3 = r11.m10428()     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteException -> L7a
            java.lang.String r4 = "user_attributes"
            java.lang.String r0 = "set_timestamp"
            java.lang.String r5 = "value"
            java.lang.String r6 = "origin"
            java.lang.String[] r5 = new java.lang.String[]{r0, r5, r6}     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteException -> L7a
            java.lang.String r6 = "app_id=? and name=?"
            java.lang.String[] r7 = new java.lang.String[]{r12, r13}     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteException -> L7a
            r9 = 0
            r10 = 0
            r8 = 0
            android.database.Cursor r3 = r3.query(r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteException -> L7a
            boolean r0 = r3.moveToFirst()     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L71
            if (r0 != 0) goto L37
            goto L95
        L37:
            r0 = 0
            long r8 = r3.getLong(r0)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L71
            r0 = 1
            java.lang.Object r10 = r11.m10414(r3, r0)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L71
            if (r10 != 0) goto L44
            goto L95
        L44:
            r0 = 2
            java.lang.String r6 = r3.getString(r0)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L71
            ﹶﾞ.יי r4 = new ﹶﾞ.יי     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L71
            r5 = r12
            r7 = r13
            r4.<init>(r5, r6, r7, r8, r10)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            boolean r12 = r3.moveToNext()     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            if (r12 == 0) goto L6d
            ﹶﾞ.ﹳـ r12 = r1.f20193     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            p447.C5322.m10556(r12)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            ﹶﾞ.ʼˈ r12 = r12.f20343     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            java.lang.String r13 = "Got multiple records for user property, expected one. appId"
            ﹶﾞ.ـˏ r0 = p447.C5344.m10722(r5)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            r12.m10216(r0, r13)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            goto L6d
        L67:
            r0 = move-exception
            r12 = r0
            goto L75
        L6a:
            r0 = move-exception
        L6b:
            r12 = r0
            goto L7f
        L6d:
            r3.close()
            return r4
        L71:
            r0 = move-exception
            r5 = r12
            r7 = r13
            goto L6b
        L75:
            r2 = r3
            goto L9b
        L77:
            r0 = move-exception
            r12 = r0
            goto L9b
        L7a:
            r0 = move-exception
            r5 = r12
            r7 = r13
            r12 = r0
            r3 = r2
        L7f:
            ﹶﾞ.ﹳـ r13 = r1.f20193     // Catch: java.lang.Throwable -> L67
            p447.C5322.m10556(r13)     // Catch: java.lang.Throwable -> L67
            ﹶﾞ.ʼˈ r13 = r13.f20343     // Catch: java.lang.Throwable -> L67
            java.lang.String r0 = "Error querying user property. appId"
            ﹶﾞ.ـˏ r4 = p447.C5344.m10722(r5)     // Catch: java.lang.Throwable -> L67
            ﹶﾞ.ˑٴ r1 = r1.f20199     // Catch: java.lang.Throwable -> L67
            java.lang.String r1 = r1.m10469(r7)     // Catch: java.lang.Throwable -> L67
            r13.m10215(r0, r4, r1, r12)     // Catch: java.lang.Throwable -> L67
        L95:
            if (r3 == 0) goto L9a
            r3.close()
        L9a:
            return r2
        L9b:
            if (r2 == 0) goto La0
            r2.close()
        La0:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5257.m10432(java.lang.String, java.lang.String):ﹶﾞ.יי");
    }

    /* renamed from: ᐧⁱ, reason: contains not printable characters */
    public final void m10433(C5243 c5243, boolean z) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        C5322 c53222 = c5243.f19750;
        ⁱᴵ();
        m10466();
        String m10324 = c5243.m10324();
        AbstractC3659.m7687(m10324);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", m10324);
        EnumC5341 enumC5341 = EnumC5341.f20321;
        C5337 c5337 = this.f19910;
        if (z) {
            contentValues.put("app_instance_id", (String) null);
        } else if (c5337.m10651(m10324).m10537(enumC5341)) {
            contentValues.put("app_instance_id", c5243.m10340());
        }
        contentValues.put("gmp_app_id", c5243.m10337());
        if (c5337.m10651(m10324).m10537(EnumC5341.f20324)) {
            C5215 c5215 = c53222.f20200;
            C5322.m10556(c5215);
            c5215.m10203();
            contentValues.put("resettable_device_id_hash", c5243.f19732);
        }
        C5215 c52152 = c53222.f20200;
        C5322.m10556(c52152);
        c52152.m10203();
        contentValues.put("last_bundle_index", Long.valueOf(c5243.f19742));
        C5215 c52153 = c53222.f20200;
        C5322.m10556(c52153);
        c52153.m10203();
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(c5243.f19746));
        C5215 c52154 = c53222.f20200;
        C5322.m10556(c52154);
        c52154.m10203();
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(c5243.f19712));
        contentValues.put("app_version", c5243.m10346());
        C5215 c52155 = c53222.f20200;
        C5322.m10556(c52155);
        c52155.m10203();
        contentValues.put("app_store", c5243.f19752);
        C5215 c52156 = c53222.f20200;
        C5322.m10556(c52156);
        c52156.m10203();
        contentValues.put("gmp_version", Long.valueOf(c5243.f19724));
        C5215 c52157 = c53222.f20200;
        C5322.m10556(c52157);
        c52157.m10203();
        contentValues.put("dev_cert_hash", Long.valueOf(c5243.f19743));
        C5215 c52158 = c53222.f20200;
        C5322.m10556(c52158);
        c52158.m10203();
        contentValues.put("measurement_enabled", Boolean.valueOf(c5243.f19725));
        C5215 c52159 = c53222.f20200;
        C5215 c521510 = c53222.f20200;
        C5322.m10556(c52159);
        c52159.m10203();
        contentValues.put("day", Long.valueOf(c5243.f19735));
        C5322.m10556(c521510);
        c521510.m10203();
        contentValues.put("daily_public_events_count", Long.valueOf(c5243.f19740));
        C5322.m10556(c521510);
        c521510.m10203();
        contentValues.put("daily_events_count", Long.valueOf(c5243.f19744));
        C5322.m10556(c521510);
        c521510.m10203();
        contentValues.put("daily_conversions_count", Long.valueOf(c5243.f19720));
        C5215 c521511 = c53222.f20200;
        C5322.m10556(c521511);
        c521511.m10203();
        contentValues.put("config_fetched_time", Long.valueOf(c5243.f19728));
        C5215 c521512 = c53222.f20200;
        C5322.m10556(c521512);
        c521512.m10203();
        contentValues.put("failed_config_fetch_time", Long.valueOf(c5243.f19711));
        contentValues.put("app_version_int", Long.valueOf(c5243.m10332()));
        contentValues.put("firebase_instance_id", c5243.m10336());
        C5322.m10556(c521510);
        c521510.m10203();
        contentValues.put("daily_error_events_count", Long.valueOf(c5243.f19745));
        C5322.m10556(c521510);
        c521510.m10203();
        contentValues.put("daily_realtime_events_count", Long.valueOf(c5243.f19722));
        C5322.m10556(c521510);
        c521510.m10203();
        contentValues.put("health_monitor_sample", c5243.f19731);
        contentValues.put("android_id", (Long) 0L);
        C5215 c521513 = c53222.f20200;
        C5322.m10556(c521513);
        c521513.m10203();
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(c5243.f19713));
        contentValues.put("dynamite_version", Long.valueOf(c5243.m10350()));
        if (c5337.m10651(m10324).m10537(enumC5341)) {
            C5215 c521514 = c53222.f20200;
            C5322.m10556(c521514);
            c521514.m10203();
            contentValues.put("session_stitching_token", c5243.f19730);
        }
        contentValues.put("sgtm_upload_enabled", Boolean.valueOf(c5243.m10311()));
        C5215 c521515 = c53222.f20200;
        C5322.m10556(c521515);
        c521515.m10203();
        contentValues.put("target_os_version", Long.valueOf(c5243.f19709));
        C5215 c521516 = c53222.f20200;
        C5322.m10556(c521516);
        c521516.m10203();
        contentValues.put("session_stitching_token_hash", Long.valueOf(c5243.f19734));
        C0334.m1580();
        C5327 c5327 = c5322.f20189;
        C5344 c5344 = c5322.f20193;
        if (c5327.m10577(m10324, AbstractC5321.f20075)) {
            C5215 c521517 = c53222.f20200;
            C5322.m10556(c521517);
            c521517.m10203();
            contentValues.put("ad_services_version", Integer.valueOf(c5243.f19718));
            C5215 c521518 = c53222.f20200;
            C5322.m10556(c521518);
            c521518.m10203();
            contentValues.put("attribution_eligibility_status", Long.valueOf(c5243.f19738));
        }
        C5215 c521519 = c53222.f20200;
        C5322.m10556(c521519);
        c521519.m10203();
        contentValues.put("unmatched_first_open_without_ad_id", Boolean.valueOf(c5243.f19710));
        contentValues.put("npa_metadata_value", c5243.m10335());
        C5215 c521520 = c53222.f20200;
        C5322.m10556(c521520);
        c521520.m10203();
        contentValues.put("bundle_delivery_index", Long.valueOf(c5243.f19727));
        contentValues.put("sgtm_preview_key", c5243.m10316());
        C5322.m10556(c521510);
        c521510.m10203();
        contentValues.put("dma_consent_state", Integer.valueOf(c5243.f19723));
        C5322.m10556(c521510);
        c521510.m10203();
        contentValues.put("daily_realtime_dcu_count", Integer.valueOf(c5243.f19739));
        contentValues.put("serialized_npa_metadata", c5243.m10334());
        contentValues.put("client_upload_eligibility", Integer.valueOf(c5243.m10331()));
        C5215 c521521 = c53222.f20200;
        C5322.m10556(c521521);
        c521521.m10203();
        ArrayList arrayList = c5243.f19733;
        if (arrayList != null) {
            if (arrayList.isEmpty()) {
                C5322.m10556(c5344);
                c5344.f20348.m10216(m10324, "Safelisted events should not be an empty list. appId");
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", arrayList));
            }
        }
        if (c5322.f20189.m10577(null, AbstractC5321.f20137) && !contentValues.containsKey("safelisted_events")) {
            contentValues.put("safelisted_events", (String) null);
        }
        C5215 c521522 = c53222.f20200;
        C5322.m10556(c521522);
        c521522.m10203();
        contentValues.put("unmatched_pfo", c5243.f19748);
        C5215 c521523 = c53222.f20200;
        C5322.m10556(c521523);
        c521523.m10203();
        contentValues.put("unmatched_uwa", c5243.f19717);
        C5215 c521524 = c53222.f20200;
        C5322.m10556(c521524);
        c521524.m10203();
        contentValues.put("ad_campaign_info", c5243.f19726);
        try {
            SQLiteDatabase m10428 = m10428();
            if (m10428.update("apps", contentValues, "app_id = ?", new String[]{m10324}) == 0 && m10428.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                C5322.m10556(c5344);
                c5344.f20343.m10216(C5344.m10722(m10324), "Failed to insert/update app (got -1). appId");
            }
        } catch (SQLiteException e) {
            C5322.m10556(c5344);
            c5344.f20343.m10214(C5344.m10722(m10324), e, "Error storing app. appId");
        }
    }

    /* renamed from: ᴵٴ, reason: contains not printable characters */
    public final long m10434(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = m10428().rawQuery(str, strArr);
                if (!rawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j = rawQuery.getLong(0);
                rawQuery.close();
                return j;
            } catch (SQLiteException e) {
                C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
                C5322.m10556(c5344);
                c5344.f20343.m10214(str, e, "Database error");
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: ᵔⁱ, reason: contains not printable characters */
    public final boolean m10435(String str, String str2) {
        return m10434("select count(1) from raw_events where app_id = ? and name = ?", new String[]{str, str2}) > 0;
    }

    /* renamed from: ᵢʻ, reason: contains not printable characters */
    public final void m10436(String str, String str2) {
        AbstractC3659.m7680(str2);
        ⁱᴵ();
        m10466();
        try {
            m10428().delete(str, "app_id=?", new String[]{str2});
        } catch (SQLiteException e) {
            C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10214(C5344.m10722(str2), e, "Error deleting snapshot. appId");
        }
    }

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public final void m10437(Long l) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        ⁱᴵ();
        m10466();
        if (m10404()) {
            StringBuilder sb = new StringBuilder(l.toString().length() + 86);
            sb.append("SELECT COUNT(1) FROM upload_queue WHERE rowid = ");
            sb.append(l);
            sb.append(" AND retry_count =  2147483647 LIMIT 1");
            if (m10434(sb.toString(), null) > 0) {
                C5344 c5344 = c5322.f20193;
                C5322.m10556(c5344);
                c5344.f20348.m10217("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase m10428 = m10428();
                c5322.f20206.getClass();
                long currentTimeMillis = System.currentTimeMillis();
                StringBuilder sb2 = new StringBuilder(String.valueOf(currentTimeMillis).length() + 60);
                sb2.append(" SET retry_count = retry_count + 1, last_upload_timestamp = ");
                sb2.append(currentTimeMillis);
                String sb3 = sb2.toString();
                StringBuilder sb4 = new StringBuilder(sb3.length() + 34 + l.toString().length() + 29);
                sb4.append("UPDATE upload_queue");
                sb4.append(sb3);
                sb4.append(" WHERE rowid = ");
                sb4.append(l);
                sb4.append(" AND retry_count < 2147483647");
                m10428.execSQL(sb4.toString());
            } catch (SQLiteException e) {
                C5344 c53442 = c5322.f20193;
                C5322.m10556(c53442);
                c53442.f20343.m10216(e, "Error incrementing retry count. error");
            }
        }
    }

    /* renamed from: ᵢי, reason: contains not printable characters */
    public final boolean m10438(C5287 c5287) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        ⁱᴵ();
        m10466();
        String str = c5287.f19945;
        AbstractC3659.m7687(str);
        if (m10432(str, c5287.f19944.f19705) == null) {
            long m10434 = m10434("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str});
            c5322.getClass();
            if (m10434 >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", c5287.f19951);
        contentValues.put("name", c5287.f19944.f19705);
        Object m10309 = c5287.f19944.m10309();
        AbstractC3659.m7687(m10309);
        m10394(contentValues, m10309);
        contentValues.put("active", Boolean.valueOf(c5287.f19952));
        contentValues.put("trigger_event_name", c5287.f19948);
        contentValues.put("trigger_timeout", Long.valueOf(c5287.f19947));
        C5279 c5279 = c5287.f19950;
        C5339 c5339 = c5322.f20208;
        C5344 c5344 = c5322.f20193;
        C5322.m10560(c5339);
        contentValues.put("timed_out_event", C5339.m10671(c5279));
        contentValues.put("creation_timestamp", Long.valueOf(c5287.f19946));
        C5322.m10560(c5339);
        contentValues.put("triggered_event", C5339.m10671(c5287.f19954));
        contentValues.put("triggered_timestamp", Long.valueOf(c5287.f19944.f19700));
        contentValues.put("time_to_live", Long.valueOf(c5287.f19949));
        contentValues.put("expired_event", C5339.m10671(c5287.f19953));
        try {
            if (m10428().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                return true;
            }
            C5322.m10556(c5344);
            c5344.f20343.m10216(C5344.m10722(str), "Failed to insert/update conditional user property (got -1)");
            return true;
        } catch (SQLiteException e) {
            C5322.m10556(c5344);
            c5344.f20343.m10214(C5344.m10722(str), e, "Error storing conditional user property");
            return true;
        }
    }

    /* renamed from: ᵢᐧ, reason: contains not printable characters */
    public final C5311 m10439(String str) {
        AbstractC3659.m7687(str);
        ⁱᴵ();
        m10466();
        return C5311.m10530(100, m10411("select storage_consent_at_bundling from consent_settings where app_id=? limit 1;", new String[]{str}));
    }

    /* JADX WARN: Not initialized variable reg: 3, insn: 0x006c: MOVE (r2 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:27:0x006c */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0085  */
    /* renamed from: ᵢᵎ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final ᵢ.ﹳٴ m10440(java.lang.String r12) {
        /*
            r11 = this;
            java.lang.Object r0 = r11.ʾˋ
            r1 = r0
            ﹶﾞ.ᵎʻ r1 = (p447.C5322) r1
            p296.AbstractC3659.m7680(r12)
            r11.ⁱᴵ()
            r11.m10466()
            r2 = 0
            android.database.sqlite.SQLiteDatabase r3 = r11.m10428()     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteException -> L71
            java.lang.String r4 = "apps"
            java.lang.String r0 = "remote_config"
            java.lang.String r5 = "config_last_modified_time"
            java.lang.String r6 = "e_tag"
            java.lang.String[] r5 = new java.lang.String[]{r0, r5, r6}     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteException -> L71
            java.lang.String r6 = "app_id=?"
            java.lang.String[] r7 = new java.lang.String[]{r12}     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteException -> L71
            r9 = 0
            r10 = 0
            r8 = 0
            android.database.Cursor r3 = r3.query(r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteException -> L71
            boolean r0 = r3.moveToFirst()     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            if (r0 != 0) goto L33
            goto L83
        L33:
            r0 = 0
            byte[] r0 = r3.getBlob(r0)     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            r4 = 1
            java.lang.String r4 = r3.getString(r4)     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            r5 = 2
            java.lang.String r5 = r3.getString(r5)     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            boolean r6 = r3.moveToNext()     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            if (r6 == 0) goto L5e
            ﹶﾞ.ﹳـ r6 = r1.f20193     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            p447.C5322.m10556(r6)     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            ﹶﾞ.ʼˈ r6 = r6.f20343     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            java.lang.String r7 = "Got multiple records for app config, expected one. appId"
            ﹶﾞ.ـˏ r8 = p447.C5344.m10722(r12)     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            r6.m10216(r8, r7)     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            goto L5e
        L59:
            r0 = move-exception
            r12 = r0
            goto L6c
        L5c:
            r0 = move-exception
            goto L73
        L5e:
            if (r0 != 0) goto L61
            goto L83
        L61:
            ᵢ.ﹳٴ r6 = new ᵢ.ﹳٴ     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            r7 = 23
            r6.<init>(r0, r4, r5, r7)     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            r3.close()
            return r6
        L6c:
            r2 = r3
            goto L89
        L6e:
            r0 = move-exception
            r12 = r0
            goto L89
        L71:
            r0 = move-exception
            r3 = r2
        L73:
            ﹶﾞ.ﹳـ r1 = r1.f20193     // Catch: java.lang.Throwable -> L59
            p447.C5322.m10556(r1)     // Catch: java.lang.Throwable -> L59
            ﹶﾞ.ʼˈ r1 = r1.f20343     // Catch: java.lang.Throwable -> L59
            java.lang.String r4 = "Error querying remote config. appId"
            ﹶﾞ.ـˏ r12 = p447.C5344.m10722(r12)     // Catch: java.lang.Throwable -> L59
            r1.m10214(r12, r0, r4)     // Catch: java.lang.Throwable -> L59
        L83:
            if (r3 == 0) goto L88
            r3.close()
        L88:
            return r2
        L89:
            if (r2 == 0) goto L8e
            r2.close()
        L8e:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5257.m10440(java.lang.String):ᵢ.ﹳٴ");
    }

    /* JADX WARN: Removed duplicated region for block: B:126:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x03e7  */
    /* renamed from: ᵢﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p447.C5243 m10441(java.lang.String r53) {
        /*
            Method dump skipped, instructions count: 1009
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5257.m10441(java.lang.String):ﹶﾞ.ʿᵢ");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0059, code lost:
    
        if (r8 != null) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x005b, code lost:
    
        m10418("events", r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c1, code lost:
    
        if (r8 != null) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00cb  */
    /* renamed from: ⁱʾ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m10442(java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5257.m10442(java.lang.String):void");
    }

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public final void m10443(ArrayList arrayList) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        ⁱᴵ();
        m10466();
        AbstractC3659.m7687(arrayList);
        if (arrayList.size() == 0) {
            throw new IllegalArgumentException("Given Integer is zero");
        }
        if (m10404()) {
            String join = TextUtils.join(",", arrayList);
            StringBuilder sb = new StringBuilder(String.valueOf(join).length() + 2);
            sb.append("(");
            sb.append(join);
            sb.append(")");
            String sb2 = sb.toString();
            StringBuilder sb3 = new StringBuilder(sb2.length() + 80);
            sb3.append("SELECT COUNT(1) FROM queue WHERE rowid IN ");
            sb3.append(sb2);
            sb3.append(" AND retry_count =  2147483647 LIMIT 1");
            if (m10434(sb3.toString(), null) > 0) {
                C5344 c5344 = c5322.f20193;
                C5322.m10556(c5344);
                c5344.f20348.m10217("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase m10428 = m10428();
                StringBuilder sb4 = new StringBuilder(sb2.length() + 127);
                sb4.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb4.append(sb2);
                sb4.append(" AND (retry_count IS NULL OR retry_count < 2147483647)");
                m10428.execSQL(sb4.toString());
            } catch (SQLiteException e) {
                C5344 c53442 = c5322.f20193;
                C5322.m10556(c53442);
                c53442.f20343.m10216(e, "Error incrementing retry count. error");
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:(3:2|3|4)|(2:6|(3:8|9|10)(1:13))|14|15|(1:17)(2:20|21)|18|9|10) */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a4, code lost:
    
        r1 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ab, code lost:
    
        r4 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ac, code lost:
    
        r0 = r0.f20193;
        p447.C5322.m10556(r0);
        r0.f20343.m10215("Error inserting column. appId", p447.C5344.m10722(r14), "first_open_count", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00bc, code lost:
    
        r7 = r4;
     */
    /* renamed from: ﹶʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m10444(java.lang.String r14) {
        /*
            r13 = this;
            java.lang.Object r0 = r13.ʾˋ
            ﹶﾞ.ᵎʻ r0 = (p447.C5322) r0
            java.lang.String r1 = "select first_open_count from app2 where app_id=?"
            p296.AbstractC3659.m7680(r14)
            java.lang.String r2 = "first_open_count"
            p296.AbstractC3659.m7680(r2)
            r13.ⁱᴵ()
            r13.m10466()
            android.database.sqlite.SQLiteDatabase r3 = r13.m10428()
            r3.beginTransaction()
            r4 = 0
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            r7 = 48
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            r6.append(r1)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            java.lang.String r1 = r6.toString()     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            java.lang.String[] r6 = new java.lang.String[]{r14}     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            r7 = -1
            long r9 = r13.m10424(r1, r6, r7)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            int r1 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            java.lang.String r6 = "app2"
            java.lang.String r11 = "app_id"
            if (r1 != 0) goto L72
            android.content.ContentValues r1 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            r1.<init>()     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            r1.put(r11, r14)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            r9 = 0
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            r1.put(r2, r9)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            java.lang.String r10 = "previous_install_count"
            r1.put(r10, r9)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            r9 = 0
            r10 = 5
            long r9 = r3.insertWithOnConflict(r6, r9, r1, r10)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            int r1 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r1 != 0) goto L71
            ﹶﾞ.ﹳـ r1 = r0.f20193     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            p447.C5322.m10556(r1)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            ﹶﾞ.ʼˈ r1 = r1.f20343     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            java.lang.String r6 = "Failed to insert column (got -1). appId"
            ﹶﾞ.ـˏ r9 = p447.C5344.m10722(r14)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            r1.m10214(r9, r2, r6)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            goto Lbd
        L6d:
            r14 = move-exception
            goto Lc1
        L6f:
            r1 = move-exception
            goto Lac
        L71:
            r9 = r4
        L72:
            android.content.ContentValues r1 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            r1.<init>()     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            r1.put(r11, r14)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            r11 = 1
            long r11 = r11 + r9
            java.lang.Long r11 = java.lang.Long.valueOf(r11)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            r1.put(r2, r11)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            java.lang.String r11 = "app_id = ?"
            java.lang.String[] r12 = new java.lang.String[]{r14}     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            int r1 = r3.update(r6, r1, r11, r12)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            long r11 = (long) r1     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            int r1 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            if (r1 != 0) goto La6
            ﹶﾞ.ﹳـ r1 = r0.f20193     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            p447.C5322.m10556(r1)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            ﹶﾞ.ʼˈ r1 = r1.f20343     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            java.lang.String r4 = "Failed to update column (got 0). appId"
            ﹶﾞ.ـˏ r5 = p447.C5344.m10722(r14)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            r1.m10214(r5, r2, r4)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            goto Lbd
        La4:
            r1 = move-exception
            goto Lab
        La6:
            r3.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            r7 = r9
            goto Lbd
        Lab:
            r4 = r9
        Lac:
            ﹶﾞ.ﹳـ r0 = r0.f20193     // Catch: java.lang.Throwable -> L6d
            p447.C5322.m10556(r0)     // Catch: java.lang.Throwable -> L6d
            ﹶﾞ.ʼˈ r0 = r0.f20343     // Catch: java.lang.Throwable -> L6d
            java.lang.String r6 = "Error inserting column. appId"
            ﹶﾞ.ـˏ r14 = p447.C5344.m10722(r14)     // Catch: java.lang.Throwable -> L6d
            r0.m10215(r6, r14, r2, r1)     // Catch: java.lang.Throwable -> L6d
            r7 = r4
        Lbd:
            r3.endTransaction()
            return r7
        Lc1:
            r3.endTransaction()
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5257.m10444(java.lang.String):long");
    }

    /* renamed from: ﾞˊ, reason: contains not printable characters */
    public final C5333 m10445(String str, C0414 c0414, String str2) {
        C5333 m10405 = m10405("events", str, c0414.m1827());
        if (m10405 != null) {
            long j = m10405.f20253 + 1;
            long j2 = m10405.f20252 + 1;
            return new C5333(m10405.f20258, m10405.f20257, m10405.f20250 + 1, j2, j, m10405.f20259, m10405.f20255, m10405.f20256, m10405.f20249, m10405.f20251, m10405.f20254);
        }
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        C5344 c5344 = c5322.f20193;
        C5322.m10556(c5344);
        c5344.f20348.m10214(C5344.m10722(str), c5322.f20199.m10473(str2), "Event aggregate wasn't created during raw event logging. appId, event");
        return new C5333(str, c0414.m1827(), 1L, 1L, 1L, c0414.m1820(), 0L, null, null, null, null);
    }

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public final boolean m10446(String str) {
        EnumC5270[] enumC5270Arr = {EnumC5270.f19895};
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Integer.valueOf(enumC5270Arr[0].f19902));
        String m10393 = m10393(arrayList);
        String m10406 = m10406();
        StringBuilder sb = new StringBuilder(m10393.length() + 61 + m10406.length());
        sb.append("SELECT COUNT(1) > 0 FROM upload_queue WHERE app_id=?");
        sb.append(m10393);
        sb.append(" AND NOT ");
        sb.append(m10406);
        return m10434(sb.toString(), new String[]{str}) != 0;
    }

    /* renamed from: ﾞˏ, reason: contains not printable characters */
    public final void m10447(String str, Long l, long j, C0414 c0414) {
        ⁱᴵ();
        m10466();
        AbstractC3659.m7687(c0414);
        AbstractC3659.m7680(str);
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        byte[] m2019 = c0414.m2019();
        C5344 c5344 = c5322.f20193;
        C5344 c53442 = c5322.f20193;
        C5322.m10556(c5344);
        c5344.f20350.m10214(c5322.f20199.m10473(str), Integer.valueOf(m2019.length), "Saving complex main event, appId, data size");
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l);
        contentValues.put("children_to_process", Long.valueOf(j));
        contentValues.put("main_event", m2019);
        try {
            if (m10428().insertWithOnConflict("main_event_params", null, contentValues, 5) == -1) {
                C5322.m10556(c53442);
                c53442.f20343.m10216(C5344.m10722(str), "Failed to insert complex main event (got -1). appId");
            }
        } catch (SQLiteException e) {
            C5322.m10556(c53442);
            c53442.f20343.m10214(C5344.m10722(str), e, "Error storing complex main event. appId");
        }
    }

    /* renamed from: ﾞי, reason: contains not printable characters */
    public final void m10448(C0311 c0311, boolean z) {
        ⁱᴵ();
        m10466();
        AbstractC3659.m7680(c0311.m1379());
        if (!c0311.m1418()) {
            throw new IllegalStateException();
        }
        m10417();
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        C4279 c4279 = c5322.f20206;
        C5344 c5344 = c5322.f20193;
        c4279.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        long m1489 = c0311.m1489();
        C5254 c5254 = AbstractC5321.f20071;
        if (m1489 < currentTimeMillis - ((Long) c5254.m10388(null)).longValue() || c0311.m1489() > ((Long) c5254.m10388(null)).longValue() + currentTimeMillis) {
            C5322.m10556(c5344);
            c5344.f20348.m10215("Storing bundle outside of the max uploading time span. appId, now, timestamp", C5344.m10722(c0311.m1379()), Long.valueOf(currentTimeMillis), Long.valueOf(c0311.m1489()));
        }
        byte[] m2019 = c0311.m2019();
        try {
            C5239 c5239 = this.f19910.f20295;
            C5337.m10599(c5239);
            byte[] m10282 = c5239.m10282(m2019);
            C5322.m10556(c5344);
            c5344.f20350.m10216(Integer.valueOf(m10282.length), "Saving bundle, size");
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", c0311.m1379());
            contentValues.put("bundle_end_timestamp", Long.valueOf(c0311.m1489()));
            contentValues.put("data", m10282);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            if (c0311.m1461()) {
                contentValues.put("retry_count", Integer.valueOf(c0311.m1388()));
            }
            try {
                if (m10428().insert("queue", null, contentValues) == -1) {
                    C5322.m10556(c5344);
                    c5344.f20343.m10216(C5344.m10722(c0311.m1379()), "Failed to insert bundle (got -1). appId");
                }
            } catch (SQLiteException e) {
                C5322.m10556(c5344);
                c5344.f20343.m10214(C5344.m10722(c0311.m1379()), e, "Error storing bundle. appId");
            }
        } catch (IOException e2) {
            C5322.m10556(c5344);
            c5344.f20343.m10214(C5344.m10722(c0311.m1379()), e2, "Data loss. Failed to serialize bundle. appId");
        }
    }
}
