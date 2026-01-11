.class public final Lᵔـ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵔـ/ˈ;
.implements Lʻˎ/ⁱˊ;
.implements Lᵔـ/ʽ;


# static fields
.field public static final ˊʻ:Lᴵˆ/ⁱˊ;


# instance fields
.field public final ʽʽ:Lﹳᵔ/ﹳٴ;

.field public final ʾˋ:Lᵔـ/ˆʾ;

.field public final ˈٴ:Lᵔـ/ﹳٴ;

.field public final ᴵˊ:Lﹳᵔ/ﹳٴ;

.field public final ᴵᵔ:Lᵎˋ/ﹳٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᴵˆ/ⁱˊ;

    const-string v1, "proto"

    invoke-direct {v0, v1}, Lᴵˆ/ⁱˊ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lᵔـ/ᵔᵢ;->ˊʻ:Lᴵˆ/ⁱˊ;

    return-void
.end method

.method public constructor <init>(Lﹳᵔ/ﹳٴ;Lﹳᵔ/ﹳٴ;Lᵔـ/ﹳٴ;Lᵔـ/ˆʾ;Lᵎˋ/ﹳٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lᵔـ/ᵔᵢ;->ʾˋ:Lᵔـ/ˆʾ;

    iput-object p1, p0, Lᵔـ/ᵔᵢ;->ᴵˊ:Lﹳᵔ/ﹳٴ;

    iput-object p2, p0, Lᵔـ/ᵔᵢ;->ʽʽ:Lﹳᵔ/ﹳٴ;

    iput-object p3, p0, Lᵔـ/ᵔᵢ;->ˈٴ:Lᵔـ/ﹳٴ;

    iput-object p5, p0, Lᵔـ/ᵔᵢ;->ᴵᵔ:Lᵎˋ/ﹳٴ;

    return-void
.end method

.method public static ˈٴ(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᵔـ/ⁱˊ;

    iget-wide v1, v1, Lᵔـ/ⁱˊ;->ﹳٴ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ᵎˊ(Landroid/database/Cursor;Lᵔـ/ﾞᴵ;)Ljava/lang/Object;
    .locals 0

    .prologue
    :try_start_0
    invoke-interface {p1, p0}, Lᵔـ/ﾞᴵ;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public static ᵎﹶ(Landroid/database/sqlite/SQLiteDatabase;Lˉˋ/ʼˎ;)Ljava/lang/Long;
    .locals 11

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "backend_name = ? and priority = ?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lˉˋ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, p1, Lˉˋ/ʼˎ;->ʽ:Lᴵˆ/ʽ;

    invoke-static {v3}, Lᐧ/ﹳٴ;->ﹳٴ(Lᴵˆ/ʽ;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p1, Lˉˋ/ʼˎ;->ⁱˊ:[B

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string v3, " and extras = ?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, " and extras is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p1, "_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array p1, v2, [Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "transport_contexts"

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lᵔـ/ᵔᵢ;->ʾˋ:Lᵔـ/ˆʾ;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public final ʽ()Landroid/database/sqlite/SQLiteDatabase;
    .locals 9

    .prologue
    iget-object v0, p0, Lᵔـ/ᵔᵢ;->ʾˋ:Lᵔـ/ˆʾ;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lᵔـ/ᵔᵢ;->ʽʽ:Lﹳᵔ/ﹳٴ;

    invoke-interface {v1}, Lﹳᵔ/ﹳٴ;->ᵔʾ()J

    move-result-wide v2

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v4

    invoke-interface {v1}, Lﹳᵔ/ﹳٴ;->ᵔʾ()J

    move-result-wide v5

    iget-object v7, p0, Lᵔـ/ᵔᵢ;->ˈٴ:Lᵔـ/ﹳٴ;

    iget v7, v7, Lᵔـ/ﹳٴ;->ʽ:I

    int-to-long v7, v7

    add-long/2addr v7, v2

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;

    const-string v1, "Timed out while trying to open db."

    invoke-direct {v0, v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final ʾˋ(Lʻˎ/ﹳٴ;)Ljava/lang/Object;
    .locals 9

    .prologue
    invoke-virtual {p0}, Lᵔـ/ᵔᵢ;->ʽ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lᵔـ/ᵔᵢ;->ʽʽ:Lﹳᵔ/ﹳٴ;

    invoke-interface {v1}, Lﹳᵔ/ﹳٴ;->ᵔʾ()J

    move-result-wide v2

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p1}, Lʻˎ/ﹳٴ;->ʽ()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catch_0
    move-exception v4

    invoke-interface {v1}, Lﹳᵔ/ﹳٴ;->ᵔʾ()J

    move-result-wide v5

    iget-object v7, p0, Lᵔـ/ᵔᵢ;->ˈٴ:Lᵔـ/ﹳٴ;

    iget v7, v7, Lᵔـ/ﹳٴ;->ʽ:I

    int-to-long v7, v7

    add-long/2addr v7, v2

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;

    const-string v0, "Timed out while trying to acquire the lock."

    invoke-direct {p1, v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final ˉˆ(Lᵔـ/ﾞᴵ;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lᵔـ/ᵔᵢ;->ʽ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {p1, v0}, Lᵔـ/ﾞᴵ;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public final ـˆ(JLˆ/ʽ;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lיˎ/ﹳٴ;

    invoke-direct {v0, p1, p2, p4, p3}, Lיˎ/ﹳٴ;-><init>(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lᵔـ/ᵔᵢ;->ˉˆ(Lᵔـ/ﾞᴵ;)Ljava/lang/Object;

    return-void
.end method

.method public final ﹳᐧ(Landroid/database/sqlite/SQLiteDatabase;Lˉˋ/ʼˎ;I)Ljava/util/ArrayList;
    .locals 23

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p2}, Lᵔـ/ᵔᵢ;->ᵎﹶ(Landroid/database/sqlite/SQLiteDatabase;Lˉˋ/ʼˎ;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v12, "experiment_ids_clear_blob"

    const-string v13, "experiment_ids_encrypted_blob"

    const-string v2, "_id"

    const-string v3, "transport_name"

    const-string v4, "timestamp_ms"

    const-string v5, "uptime_ms"

    const-string v6, "payload_encoding"

    const-string v7, "payload"

    const-string v8, "code"

    const-string v9, "inline"

    const-string v10, "product_id"

    const-string v11, "pseudonymous_id"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const-string v15, "events"

    const-string v17, "context_id = ?"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v14, p1

    invoke-virtual/range {v14 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Lˈᵔ/ﹳٴ;

    const/4 v3, 0x4

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-direct {v2, v4, v0, v5, v3}, Lˈᵔ/ﹳٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1, v2}, Lᵔـ/ᵔᵢ;->ᵎˊ(Landroid/database/Cursor;Lᵔـ/ﾞᴵ;)Ljava/lang/Object;

    return-object v0
.end method
