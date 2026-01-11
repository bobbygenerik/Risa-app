package p447;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.SystemClock;
import com.google.android.gms.internal.measurement.C0334;
import p079.C1681;
import p347.C4279;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5353 extends SQLiteOpenHelper {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f20377;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ ᵎﹶ f20378;

    public C5353(Context context, String str) {
        super(context, true == str.equals("") ? null : str, (SQLiteDatabase.CursorFactory) null, 1);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C5353(C5251 c5251, Context context) {
        this(context, "google_app_measurement_local.db");
        this.f20377 = 1;
        this.f20378 = c5251;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C5353(C5257 c5257, Context context) {
        this(context, "google_app_measurement.db");
        this.f20377 = 0;
        this.f20378 = c5257;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    private final void m10735(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    private final void m10736(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    private final void m10737(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    private final void m10738(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        switch (this.f20377) {
            case 0:
                C5257 c5257 = (C5257) this.f20378;
                C5322 c5322 = (C5322) ((ᵎﹶ) c5257).ʾˋ;
                C5322 c53222 = (C5322) ((ᵎﹶ) c5257).ʾˋ;
                c5322.getClass();
                C1681 c1681 = c5257.f19848;
                if (c1681.f6829 != 0) {
                    ((C4279) c1681.f6827).getClass();
                    if (SystemClock.elapsedRealtime() - c1681.f6829 < 3600000) {
                        throw new SQLiteException("Database open failed");
                    }
                }
                try {
                    return super.getWritableDatabase();
                } catch (SQLiteException unused) {
                    ((C4279) c1681.f6827).getClass();
                    c1681.f6829 = SystemClock.elapsedRealtime();
                    C5344 c5344 = c53222.f20193;
                    C5322.m10556(c5344);
                    c5344.f20343.m10217("Opening the database failed, dropping and recreating it");
                    if (!c53222.f20184.getDatabasePath("google_app_measurement.db").delete()) {
                        C5344 c53442 = c53222.f20193;
                        C5322.m10556(c53442);
                        c53442.f20343.m10216("google_app_measurement.db", "Failed to delete corrupted db file");
                    }
                    try {
                        SQLiteDatabase writableDatabase = super.getWritableDatabase();
                        c1681.f6829 = 0L;
                        return writableDatabase;
                    } catch (SQLiteException e) {
                        C5344 c53443 = c53222.f20193;
                        C5322.m10556(c53443);
                        c53443.f20343.m10216(e, "Failed to open freshly created database");
                        throw e;
                    }
                }
            default:
                C5251 c5251 = (C5251) this.f20378;
                try {
                    return super.getWritableDatabase();
                } catch (SQLiteDatabaseLockedException e2) {
                    throw e2;
                } catch (SQLiteException unused2) {
                    C5322 c53223 = (C5322) ((ᵎﹶ) c5251).ʾˋ;
                    C5344 c53444 = c53223.f20193;
                    C5322.m10556(c53444);
                    c53444.f20343.m10217("Opening the local database failed, dropping and recreating it");
                    if (!c53223.f20184.getDatabasePath("google_app_measurement_local.db").delete()) {
                        C5344 c53445 = c53223.f20193;
                        C5322.m10556(c53445);
                        c53445.f20343.m10216("google_app_measurement_local.db", "Failed to delete corrupted local db file");
                    }
                    try {
                        return super.getWritableDatabase();
                    } catch (SQLiteException e3) {
                        C5344 c53446 = ((C5322) ((ᵎﹶ) c5251).ʾˋ).f20193;
                        C5322.m10556(c53446);
                        c53446.f20343.m10216(e3, "Failed to open local database. Events will bypass local storage");
                        return null;
                    }
                }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        switch (this.f20377) {
            case 0:
                C5344 c5344 = ((C5322) ((ᵎﹶ) ((C5257) this.f20378)).ʾˋ).f20193;
                C5322.m10556(c5344);
                AbstractC5218.m10213(c5344, sQLiteDatabase);
                return;
            default:
                C5344 c53442 = ((C5322) ((ᵎﹶ) ((C5251) this.f20378)).ʾˋ).f20193;
                C5322.m10556(c53442);
                AbstractC5218.m10213(c53442, sQLiteDatabase);
                return;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        int i3 = this.f20377;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        switch (this.f20377) {
            case 0:
                C5322 c5322 = (C5322) ((ᵎﹶ) ((C5257) this.f20378)).ʾˋ;
                C5344 c5344 = c5322.f20193;
                C5322.m10556(c5344);
                AbstractC5218.m10208(c5344, sQLiteDatabase, "events", "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp", C5257.f19839);
                C5344 c53442 = c5322.f20193;
                C5322.m10556(c53442);
                AbstractC5218.m10208(c53442, sQLiteDatabase, "events_snapshot", "CREATE TABLE IF NOT EXISTS events_snapshot ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, last_bundled_timestamp INTEGER, last_bundled_day INTEGER, last_sampled_complex_event_id INTEGER, last_sampling_rate INTEGER, last_exempt_from_sampling INTEGER, current_session_count INTEGER, PRIMARY KEY (app_id, name)) ;", "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp,last_bundled_timestamp,last_bundled_day,last_sampled_complex_event_id,last_sampling_rate,last_exempt_from_sampling,current_session_count", null);
                C5322.m10556(c53442);
                AbstractC5218.m10208(c53442, sQLiteDatabase, "conditional_properties", "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;", "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event", null);
                C5322.m10556(c53442);
                AbstractC5218.m10208(c53442, sQLiteDatabase, "user_attributes", "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,set_timestamp,value", C5257.f19838);
                C5322.m10556(c53442);
                AbstractC5218.m10208(c53442, sQLiteDatabase, "apps", "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;", "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp", C5257.f19844);
                C5322.m10556(c53442);
                AbstractC5218.m10208(c53442, sQLiteDatabase, "queue", "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,bundle_end_timestamp,data", C5257.f19843);
                C5322.m10556(c53442);
                AbstractC5218.m10208(c53442, sQLiteDatabase, "raw_events_metadata", "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));", "app_id,metadata_fingerprint,metadata", null);
                C5322.m10556(c53442);
                AbstractC5218.m10208(c53442, sQLiteDatabase, "raw_events", "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,name,timestamp,metadata_fingerprint,data", C5257.f19841);
                C5322.m10556(c53442);
                AbstractC5218.m10208(c53442, sQLiteDatabase, "event_filters", "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));", "app_id,audience_id,filter_id,event_name,data", C5257.f19845);
                C5322.m10556(c53442);
                AbstractC5218.m10208(c53442, sQLiteDatabase, "property_filters", "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));", "app_id,audience_id,filter_id,property_name,data", C5257.f19836);
                C5322.m10556(c53442);
                AbstractC5218.m10208(c53442, sQLiteDatabase, "audience_filter_values", "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));", "app_id,audience_id,current_results", null);
                C5322.m10556(c53442);
                AbstractC5218.m10208(c53442, sQLiteDatabase, "app2", "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));", "app_id,first_open_count", C5257.f19846);
                C5322.m10556(c53442);
                AbstractC5218.m10208(c53442, sQLiteDatabase, "main_event_params", "CREATE TABLE IF NOT EXISTS main_event_params ( app_id TEXT NOT NULL, event_id TEXT NOT NULL, children_to_process INTEGER NOT NULL, main_event BLOB NOT NULL, PRIMARY KEY (app_id));", "app_id,event_id,children_to_process,main_event", null);
                C5322.m10556(c53442);
                AbstractC5218.m10208(c53442, sQLiteDatabase, "default_event_params", "CREATE TABLE IF NOT EXISTS default_event_params ( app_id TEXT NOT NULL, parameters BLOB NOT NULL, PRIMARY KEY (app_id));", "app_id,parameters", null);
                C5322.m10556(c53442);
                AbstractC5218.m10208(c53442, sQLiteDatabase, "consent_settings", "CREATE TABLE IF NOT EXISTS consent_settings ( app_id TEXT NOT NULL, consent_state TEXT NOT NULL, PRIMARY KEY (app_id));", "app_id,consent_state", C5257.f19837);
                C0334.m1580();
                C5322.m10556(c53442);
                AbstractC5218.m10208(c53442, sQLiteDatabase, "trigger_uris", "CREATE TABLE IF NOT EXISTS trigger_uris ( app_id TEXT NOT NULL, trigger_uri TEXT NOT NULL, timestamp_millis INTEGER NOT NULL, source INTEGER NOT NULL);", "app_id,trigger_uri,source,timestamp_millis", C5257.f19840);
                C5322.m10556(c53442);
                AbstractC5218.m10208(c53442, sQLiteDatabase, "upload_queue", "CREATE TABLE IF NOT EXISTS upload_queue ( app_id TEXT NOT NULL, upload_uri TEXT NOT NULL, upload_headers TEXT NOT NULL, upload_type INTEGER NOT NULL, measurement_batch BLOB NOT NULL, retry_count INTEGER NOT NULL, creation_timestamp INTEGER NOT NULL );", "app_id,upload_uri,upload_headers,upload_type,measurement_batch,retry_count,creation_timestamp", C5257.f19842);
                C5322.m10556(c53442);
                AbstractC5218.m10208(c53442, sQLiteDatabase, "no_data_mode_events", "CREATE TABLE IF NOT EXISTS no_data_mode_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, data BLOB NOT NULL, timestamp_millis INTEGER NOT NULL);", "app_id,name,data,timestamp_millis", null);
                return;
            default:
                C5344 c53443 = ((C5322) ((ᵎﹶ) ((C5251) this.f20378)).ʾˋ).f20193;
                C5322.m10556(c53443);
                AbstractC5218.m10208(c53443, sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", C5251.f19794);
                return;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        int i3 = this.f20377;
    }
}
