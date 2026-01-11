.class public final synthetic Lٴˉ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʻˎ/ﹳٴ;
.implements Lˑﹳ/ⁱˊ;
.implements Lˏ/ˈ;
.implements Landroidx/leanback/widget/ˉـ;
.implements Landroidx/leanback/widget/ʽ;
.implements Lⁱᴵ/ˉʿ;
.implements Lʽﹳ/ʼˎ;
.implements Lᐧˎ/ˆʾ;
.implements Lˏـ/ﹳٴ;
.implements Lﹶʽ/ˉˆ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lٴˉ/ﹳٴ;->ʾˋ:I

    iput-object p2, p0, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ʼˎ(Lʽﹳ/ᵔᵢ;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᴵי/ᴵˊ;

    new-instance v1, Lʿᵢ/ʿ;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2, v0}, Lʿᵢ/ʿ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lᴵי/ᐧᴵ;->ᴵˑ(Lᴵⁱ/ﾞʻ;)Lᴵי/ᵎⁱ;

    const-string p1, "Deferred.asListenableFuture"

    return-object p1
.end method

.method public ʽ()Ljava/lang/Object;
    .locals 10

    .prologue
    iget v0, p0, Lٴˉ/ﹳٴ;->ʾˋ:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v4, Lˏˆ/ﹳٴ;

    iget-object v0, v4, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᵔـ/ˈ;

    check-cast v0, Lᵔـ/ᵔᵢ;

    new-instance v5, Lـﹶ/ʾᵎ;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v5}, Lᵔـ/ᵔᵢ;->ˉˆ(Lᵔـ/ﾞᴵ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˉˋ/ʼˎ;

    iget-object v6, v4, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v6, Lcom/parse/ٴʼ;

    invoke-virtual {v6, v5, v1, v3}, Lcom/parse/ٴʼ;->ʻᵎ(Lˉˋ/ʼˎ;IZ)V

    goto :goto_0

    :cond_0
    return-object v2

    :pswitch_0
    check-cast v4, Lʾٴ/ⁱˊ;

    iget-object v0, v4, Lʾٴ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    check-cast v0, Lᵔـ/ʽ;

    check-cast v0, Lᵔـ/ᵔᵢ;

    invoke-virtual {v0}, Lᵔـ/ᵔᵢ;->ʽ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v3, "DELETE FROM log_event_dropped"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UPDATE global_log_event_state SET last_metrics_upload_ms="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lᵔـ/ᵔᵢ;->ᴵˊ:Lﹳᵔ/ﹳٴ;

    invoke-interface {v0}, Lﹳᵔ/ﹳٴ;->ᵔʾ()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :pswitch_1
    check-cast v4, Lᵔـ/ˈ;

    check-cast v4, Lᵔـ/ᵔᵢ;

    iget-object v0, v4, Lᵔـ/ᵔᵢ;->ᴵˊ:Lﹳᵔ/ﹳٴ;

    invoke-interface {v0}, Lﹳᵔ/ﹳٴ;->ᵔʾ()J

    move-result-wide v5

    iget-object v0, v4, Lᵔـ/ᵔᵢ;->ˈٴ:Lᵔـ/ﹳٴ;

    iget-wide v7, v0, Lᵔـ/ﹳٴ;->ˈ:J

    sub-long/2addr v5, v7

    invoke-virtual {v4}, Lᵔـ/ᵔᵢ;->ʽ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    const-string v2, "SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    int-to-long v8, v6

    sget-object v6, Lˆ/ʽ;->ʽʽ:Lˆ/ʽ;

    invoke-virtual {v4, v8, v9, v6, v7}, Lᵔـ/ᵔᵢ;->ـˆ(JLˆ/ʽ;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :cond_1
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-string v1, "events"

    const-string v2, "timestamp_ms < ?"

    invoke-virtual {v0, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    :pswitch_2
    check-cast v4, Lᵔـ/ʽ;

    check-cast v4, Lᵔـ/ᵔᵢ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lˆ/ﹳٴ;->ˑﹳ:I

    new-instance v0, Lˏˆ/ﹳٴ;

    const/16 v1, 0xc

    invoke-direct {v0, v1, v3}, Lˏˆ/ﹳٴ;-><init>(IZ)V

    iput-object v2, v0, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    iput-object v2, v0, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "SELECT log_source, reason, events_dropped_count FROM log_event_dropped"

    invoke-virtual {v4}, Lᵔـ/ᵔᵢ;->ʽ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_5
    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v3, Lˈᵔ/ﹳٴ;

    const/4 v6, 0x5

    invoke-direct {v3, v4, v1, v0, v6}, Lˈᵔ/ﹳٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2, v3}, Lᵔـ/ᵔᵢ;->ᵎˊ(Landroid/database/Cursor;Lᵔـ/ﾞᴵ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˆ/ﹳٴ;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    :catchall_3
    move-exception v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ˆʾ(Landroid/view/View;I)V
    .locals 10

    .prologue
    iget v0, p0, Lٴˉ/ﹳٴ;->ʾˋ:I

    const/4 v1, -0x1

    iget-object v2, p0, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v2, Lᵔˋ/ᵎˊ;

    sget-object p2, Lᵔˋ/ᵎˊ;->ᵔⁱ:[Lᐧˆ/ˈ;

    invoke-virtual {v2}, Lᵔˋ/ᵎˊ;->ˎᵎ()Lـˈ/ﾞᴵ;

    move-result-object p2

    iget-object p2, p2, Lـˈ/ﾞᴵ;->ᵔᵢ:Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object p2

    instance-of v0, p2, Lᵔˋ/ᴵˊ;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Lᵔˋ/ᴵˊ;

    goto :goto_0

    :cond_0
    move-object p2, v3

    :goto_0
    const/4 v0, 0x5

    if-nez p2, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v2}, Lᵔˋ/ᵎˊ;->ˎᵎ()Lـˈ/ﾞᴵ;

    move-result-object v4

    iget-object v4, v4, Lـˈ/ﾞᴵ;->ᵔᵢ:Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;

    invoke-virtual {v4}, Landroidx/leanback/widget/ᵔᵢ;->getSelectedPosition()I

    move-result v4

    iget-object v5, p2, Lᵔˋ/ᴵˊ;->ˈ:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_8

    if-eq v4, v1, :cond_8

    invoke-virtual {v2}, Lᵔˋ/ᵎˊ;->ˎᵎ()Lـˈ/ﾞᴵ;

    move-result-object v5

    iget-object v5, v5, Lـˈ/ﾞᴵ;->ᵔᵢ:Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->ˊˋ()Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v5, p2, Lᵔˋ/ᴵˊ;->ˈ:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sget-object v6, Lᵔˋ/ᵢˏ;->ʾˋ:Lᵔˋ/ᵢˏ;

    const/4 v7, 0x0

    invoke-virtual {p2, v7, v5, v6}, Lˋˋ/ᴵˑ;->ˑﹳ(IILjava/lang/Object;)V

    invoke-virtual {v2}, Lᵔˋ/ᵎˊ;->ˎᵎ()Lـˈ/ﾞᴵ;

    move-result-object v5

    iget-object v5, v5, Lـˈ/ﾞᴵ;->ʼˎ:Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;

    invoke-virtual {v5}, Landroidx/leanback/widget/ᵔᵢ;->getSelectedPosition()I

    move-result v5

    if-ne v5, v1, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v2}, Lᵔˋ/ᵎˊ;->ˎᵎ()Lـˈ/ﾞᴵ;

    move-result-object v1

    iget-object v1, v1, Lـˈ/ﾞᴵ;->ʼˎ:Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object v1

    instance-of v6, v1, Lᵔˋ/ٴᵢ;

    if-eqz v6, :cond_4

    check-cast v1, Lᵔˋ/ٴᵢ;

    goto :goto_1

    :cond_4
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_8

    invoke-virtual {v1, v5}, Lᵔˋ/ٴᵢ;->ᵔʾ(I)Lᵔˋ/ʽʽ;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, v1, Lᵔˋ/ʽʽ;->ⁱˊ:Lˉʾ/ⁱᴵ;

    iget-wide v5, v1, Lˉʾ/ⁱᴵ;->ⁱˊ:J

    invoke-static {v5, v6}, Lj$/time/Instant;->ofEpochSecond(J)Lj$/time/Instant;

    move-result-object v1

    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v5

    invoke-static {v1, v5}, Lj$/time/LocalDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    move-result-object v1

    iget-object p2, p2, Lᵔˋ/ᴵˊ;->ˈ:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj$/time/LocalDate;

    invoke-static {v1, p2}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v1

    invoke-virtual {p2, v1}, Lj$/time/LocalDate;->atStartOfDay(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object p2

    invoke-interface {p2}, Lj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v4

    invoke-virtual {v2}, Lᵔˋ/ᵎˊ;->ˎᵎ()Lـˈ/ﾞᴵ;

    move-result-object p2

    iget-object p2, p2, Lـˈ/ﾞᴵ;->ʼˎ:Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object p2

    instance-of v1, p2, Lᵔˋ/ٴᵢ;

    if-eqz v1, :cond_5

    check-cast p2, Lᵔˋ/ٴᵢ;

    goto :goto_2

    :cond_5
    move-object p2, v3

    :goto_2
    if-eqz p2, :cond_8

    iget-object v1, p2, Lᵔˋ/ٴᵢ;->ˈ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_3
    if-ge v7, v1, :cond_8

    invoke-virtual {p2, v7}, Lᵔˋ/ٴᵢ;->ᵔʾ(I)Lᵔˋ/ʽʽ;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    iget v8, v6, Lᵔˋ/ʽʽ;->ﹳٴ:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_7

    iget-object v6, v6, Lᵔˋ/ʽʽ;->ⁱˊ:Lˉʾ/ⁱᴵ;

    iget-wide v8, v6, Lˉʾ/ⁱᴵ;->ⁱˊ:J

    cmp-long v6, v8, v4

    if-ltz v6, :cond_7

    invoke-static {v2}, Lʿˋ/ˉʿ;->ˆﾞ(Lˑʼ/ᴵᵔ;)Landroidx/lifecycle/ʼᐧ;

    move-result-object p2

    new-instance v1, Lʽˋ/ﹶᐧ;

    invoke-direct {v1, v2, v7, v3, v0}, Lʽˋ/ﹶᐧ;-><init>(Lˑʼ/ᴵᵔ;ILˈי/ˈ;I)V

    const/4 v4, 0x3

    invoke-static {p2, v3, v1, v4}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    goto :goto_5

    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    :goto_5
    iget-object p2, v2, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz p2, :cond_9

    new-instance v1, Lʼٴ/ـˆ;

    invoke-direct {v1, v2, v2, p1, v0}, Lʼٴ/ـˆ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-void

    :pswitch_0
    check-cast v2, Lᵔʻ/ᵔᵢ;

    if-ne p2, v1, :cond_a

    goto :goto_6

    :cond_a
    iget-object p1, v2, Lʻᐧ/ˏי;->ʻᴵ:Lʻᐧ/ʼʼ;

    iget-object p1, p1, Lʻᐧ/ʼʼ;->ᵎﹶ:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->ᵎⁱ(I)Landroidx/preference/Preference;

    move-result-object p1

    iget-object p1, p1, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    iget-object p2, v2, Lᵔʻ/ᵔᵢ;->ⁱᴵ:Ljava/lang/String;

    invoke-static {p2, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    iput-object p1, v2, Lᵔʻ/ᵔᵢ;->ⁱᴵ:Ljava/lang/String;

    invoke-static {p1}, Lcom/bumptech/glide/ʽ;->ᵔᵢ(Ljava/lang/String;)Lˉʾ/ʻʿ;

    move-result-object p1

    sget-object p2, Landroid/support/v4/media/session/ⁱˊ;->ﾞᴵ:Lﹶʽ/ﹳᐧ;

    if-eqz p2, :cond_b

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lᵢـ/ʼˎ;->ﹳٴ(Lﹶʽ/ﹳᐧ;Lˉʾ/ʻʿ;I)V

    :cond_b
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public ˈ(Landroidx/leanback/widget/ʻٴ;)Ljava/lang/Object;
    .locals 48

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    sget v3, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->ˈ:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-class v5, Lˉᵎ/ᵎﹶ;

    invoke-virtual {v0, v5}, Landroidx/leanback/widget/ʻٴ;->ⁱˊ(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lˉᵎ/ᵎﹶ;

    const-class v5, Lʽʼ/ˑﹳ;

    invoke-virtual {v0, v5}, Landroidx/leanback/widget/ʻٴ;->ⁱˊ(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lʽʼ/ˑﹳ;

    const-class v6, Lיˎ/ⁱˊ;

    invoke-virtual {v0, v6}, Landroidx/leanback/widget/ʻٴ;->ˉʿ(Ljava/lang/Class;)Lˏ/ˉʿ;

    move-result-object v6

    const-class v8, Lˆٴ/ﹳٴ;

    invoke-virtual {v0, v8}, Landroidx/leanback/widget/ʻٴ;->ˉʿ(Ljava/lang/Class;)Lˏ/ˉʿ;

    move-result-object v8

    const-class v9, Lˏﹶ/ﹳٴ;

    invoke-virtual {v0, v9}, Landroidx/leanback/widget/ʻٴ;->ˉʿ(Ljava/lang/Class;)Lˏ/ˉʿ;

    move-result-object v9

    iget-object v10, v2, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->ﹳٴ:Lˏ/ˉˆ;

    invoke-virtual {v0, v10}, Landroidx/leanback/widget/ʻٴ;->ʽ(Lˏ/ˉˆ;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/concurrent/ExecutorService;

    iget-object v11, v2, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->ⁱˊ:Lˏ/ˉˆ;

    invoke-virtual {v0, v11}, Landroidx/leanback/widget/ʻٴ;->ʽ(Lˏ/ˉˆ;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/concurrent/ExecutorService;

    iget-object v2, v2, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->ʽ:Lˏ/ˉˆ;

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/ʻٴ;->ʽ(Lˏ/ˉˆ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    const-string v2, ""

    const-string v12, "FirebaseCrashlytics"

    invoke-virtual {v7}, Lˉᵎ/ᵎﹶ;->ﹳٴ()V

    iget-object v13, v7, Lˉᵎ/ᵎﹶ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v1, "Initializing Firebase Crashlytics 20.0.0 for "

    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x0

    nop

    new-instance v1, Lˈᵔ/ˈ;

    invoke-direct {v1, v10, v11}, Lˈᵔ/ˈ;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    new-instance v10, Lˑˋ/ˈ;

    invoke-direct {v10, v13}, Lˑˋ/ˈ;-><init>(Landroid/content/Context;)V

    new-instance v11, Lʼٴ/ٴᵢ;

    invoke-direct {v11, v7}, Lʼٴ/ٴᵢ;-><init>(Lˉᵎ/ᵎﹶ;)V

    new-instance v15, Lﹳˎ/ʻٴ;

    invoke-direct {v15, v13, v14, v5, v11}, Lﹳˎ/ʻٴ;-><init>(Landroid/content/Context;Ljava/lang/String;Lʽʼ/ˑﹳ;Lʼٴ/ٴᵢ;)V

    new-instance v5, Lיˎ/ⁱˊ;

    invoke-direct {v5, v6}, Lיˎ/ⁱˊ;-><init>(Lˏ/ˉʿ;)V

    new-instance v6, Lـﹶ/ﾞᴵ;

    invoke-direct {v6, v8}, Lـﹶ/ﾞᴵ;-><init>(Lˏ/ˉʿ;)V

    new-instance v14, Lﹳˎ/ʼˎ;

    invoke-direct {v14, v11, v10}, Lﹳˎ/ʼˎ;-><init>(Lʼٴ/ٴᵢ;Lˑˋ/ˈ;)V

    const-string v8, "Subscriber "

    move-object/from16 v16, v1

    const-string v1, "FirebaseSessions"

    move-wide/from16 v26, v3

    sget-object v3, Lˉᴵ/ˈ;->ʾˋ:Lˉᴵ/ˈ;

    sget-object v4, Lˉᴵ/ʽ;->ﹳٴ:Lˉᴵ/ʽ;

    invoke-static {v3}, Lˉᴵ/ʽ;->ﹳٴ(Lˉᴵ/ˈ;)Lˉᴵ/ﹳٴ;

    move-result-object v4

    move-object/from16 v17, v5

    iget-object v5, v4, Lˉᴵ/ﹳٴ;->ⁱˊ:Lﹳˎ/ʼˎ;

    if-eqz v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already registered."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v21, v15

    goto :goto_1

    :cond_0
    iput-object v14, v4, Lˉᴵ/ﹳٴ;->ⁱˊ:Lﹳˎ/ʼˎ;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " registered."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    iget-object v1, v4, Lˉᴵ/ﹳٴ;->ﹳٴ:Lﹶי/ʽ;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lﹶי/ʽ;->ᵎﹶ(Ljava/lang/Object;)V

    goto :goto_0

    :goto_1
    new-instance v15, Lˊⁱ/ˑﹳ;

    const/16 v1, 0xa

    invoke-direct {v15, v1, v9}, Lˊⁱ/ˑﹳ;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lﹳˎ/ᵔﹳ;

    move-object v4, v13

    move-object v13, v10

    move-object v10, v11

    new-instance v11, Lᵎˉ/ﹳٴ;

    invoke-direct {v11, v6}, Lᵎˉ/ﹳٴ;-><init>(Lـﹶ/ﾞᴵ;)V

    move-object v5, v12

    new-instance v12, Lᵎˉ/ﹳٴ;

    invoke-direct {v12, v6}, Lᵎˉ/ﹳٴ;-><init>(Lـﹶ/ﾞᴵ;)V

    move-object v6, v1

    move-object/from16 v9, v17

    move-object/from16 v8, v21

    invoke-direct/range {v6 .. v16}, Lﹳˎ/ᵔﹳ;-><init>(Lˉᵎ/ᵎﹶ;Lﹳˎ/ʻٴ;Lיˎ/ⁱˊ;Lʼٴ/ٴᵢ;Lᵎˉ/ﹳٴ;Lᵎˉ/ﹳٴ;Lˑˋ/ˈ;Lﹳˎ/ʼˎ;Lˊⁱ/ˑﹳ;Lˈᵔ/ˈ;)V

    move-object/from16 v1, v16

    move-object v8, v6

    move-object v6, v13

    iget-object v9, v8, Lﹳˎ/ᵔﹳ;->ˉˆ:Lˈᵔ/ˈ;

    invoke-virtual {v7}, Lˉᵎ/ᵎﹶ;->ﹳٴ()V

    iget-object v7, v7, Lˉᵎ/ᵎﹶ;->ʽ:Lˉᵎ/ʼˎ;

    iget-object v15, v7, Lˉᵎ/ʼˎ;->ⁱˊ:Ljava/lang/String;

    const-string v7, "com.google.firebase.crashlytics.mapping_file_id"

    const-string v11, "string"

    invoke-static {v4, v7, v11}, Lﹳˎ/ᵎﹶ;->ˈ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "com.crashlytics.android.build_id"

    invoke-static {v4, v7, v11}, Lﹳˎ/ᵎﹶ;->ˈ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    move-object v7, v3

    :goto_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v12, "com.google.firebase.crashlytics.build_ids_lib"

    const-string v13, "array"

    invoke-static {v4, v12, v13}, Lﹳˎ/ᵎﹶ;->ˈ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    const-string v14, "com.google.firebase.crashlytics.build_ids_arch"

    invoke-static {v4, v14, v13}, Lﹳˎ/ᵎﹶ;->ˈ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    const-string v3, "com.google.firebase.crashlytics.build_ids_build_id"

    invoke-static {v4, v3, v13}, Lﹳˎ/ᵎﹶ;->ˈ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v28, v9

    const/16 v29, 0x2

    if-eqz v12, :cond_3

    if-eqz v14, :cond_3

    if-nez v3, :cond_4

    :cond_3
    move-object/from16 v31, v8

    move-object/from16 v18, v15

    const/16 v16, 0x0

    const/16 v30, 0x1

    goto/16 :goto_6

    :cond_4
    const/16 v16, 0x0

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v14, v12

    const/16 v30, 0x1

    array-length v9, v3

    if-ne v14, v9, :cond_5

    array-length v9, v13

    array-length v14, v3

    if-eq v9, v14, :cond_6

    :cond_5
    move-object/from16 v31, v8

    move-object/from16 v18, v15

    goto :goto_5

    :cond_6
    move/from16 v9, v16

    :goto_3
    array-length v14, v3

    if-ge v9, v14, :cond_7

    new-instance v14, Lﹳˎ/ˈ;

    move/from16 v17, v9

    aget-object v9, v12, v17

    move-object/from16 v18, v15

    aget-object v15, v13, v17

    move-object/from16 v31, v8

    aget-object v8, v3, v17

    invoke-direct {v14, v9, v15, v8}, Lﹳˎ/ˈ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v17, 0x1

    move-object/from16 v15, v18

    move-object/from16 v8, v31

    goto :goto_3

    :cond_7
    move-object/from16 v31, v8

    move-object/from16 v18, v15

    :cond_8
    :goto_4
    const/4 v8, 0x0

    const/4 v13, 0x3

    goto :goto_7

    :goto_5
    const-string v8, "Lengths did not match: %d %d %d"

    array-length v9, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    array-length v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v9, v14, v16

    aput-object v12, v14, v30

    aput-object v3, v14, v29

    invoke-static {v8, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    nop

    goto :goto_4

    :goto_6
    const-string v8, "Could not find resources: %d %d %d"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v9, v14, v16

    aput-object v12, v14, v30

    aput-object v3, v14, v29

    invoke-static {v8, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    nop

    goto :goto_7

    :cond_9
    const/4 v8, 0x0

    :goto_7
    const-string v3, "Mapping file ID is: "

    invoke-static {v3, v7}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_a

    nop

    :cond_a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v8, v16

    :cond_b
    :goto_8
    if-ge v8, v3, :cond_c

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lﹳˎ/ˈ;

    iget-object v12, v9, Lﹳˎ/ˈ;->ﹳٴ:Ljava/lang/String;

    iget-object v13, v9, Lﹳˎ/ˈ;->ⁱˊ:Ljava/lang/String;

    iget-object v9, v9, Lﹳˎ/ˈ;->ʽ:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Build id for "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " on "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x3

    invoke-static {v5, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x0

    nop

    goto :goto_8

    :cond_c
    new-instance v3, Lˑʼ/ᵎˊ;

    move/from16 v8, v29

    invoke-direct {v3, v4, v8}, Lˑʼ/ᵎˊ;-><init>(Landroid/content/Context;I)V

    move-object v13, v4

    move-object/from16 v17, v11

    move-object/from16 v15, v18

    move-object/from16 v14, v21

    move-object/from16 v18, v3

    move/from16 v3, v16

    move-object/from16 v16, v7

    :try_start_0
    invoke-static/range {v13 .. v18}, Lﹳˎ/ﹳٴ;->ﹳٴ(Landroid/content/Context;Lﹳˎ/ʻٴ;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lˑʼ/ᵎˊ;)Lﹳˎ/ﹳٴ;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v21, v14

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Installer package name is: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v4, Lﹳˎ/ﹳٴ;->ˈ:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v8, 0x0

    nop

    :cond_d
    new-instance v7, Lٴﾞ/ˆʾ;

    const/16 v8, 0x8

    invoke-direct {v7, v8}, Lٴﾞ/ˆʾ;-><init>(I)V

    iget-object v8, v4, Lﹳˎ/ﹳٴ;->ﾞᴵ:Ljava/lang/String;

    iget-object v9, v4, Lﹳˎ/ﹳٴ;->ᵎﹶ:Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Lﹳˎ/ʻٴ;->ˈ()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lᵔⁱ/ᵔʾ;

    const/4 v14, 0x5

    invoke-direct {v12, v14}, Lᵔⁱ/ᵔʾ;-><init>(I)V

    new-instance v14, Lﹳי/ʽ;

    invoke-direct {v14, v12}, Lﹳי/ʽ;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lﹳי/ʽ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v16, v11

    const-string v11, "com.crashlytics.settings.json"

    move-object/from16 v47, v5

    new-instance v5, Ljava/io/File;

    iget-object v6, v6, Lˑˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Ljava/io/File;

    invoke-direct {v5, v6, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, v3, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/"

    const-string v6, "/settings"

    invoke-static {v5, v15, v6}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lʻᴵ/ﹳٴ;

    invoke-direct {v6, v5, v7}, Lʻᴵ/ﹳٴ;-><init>(Ljava/lang/String;Lٴﾞ/ˆʾ;)V

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v7, Lﹳˎ/ʻٴ;->ᵔᵢ:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v5, v7, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v35, v4

    const-string v4, ""

    invoke-virtual {v11, v7, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v11, "/"

    invoke-static {v5, v11, v4}, Lʼﾞ/ˊˋ;->ﹳᐧ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v4, "com.google.firebase.crashlytics.mapping_file_id"

    const-string v5, "string"

    invoke-static {v13, v4, v5}, Lﹳˎ/ᵎﹶ;->ˈ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "com.crashlytics.android.build_id"

    invoke-static {v13, v4, v5}, Lﹳˎ/ᵎﹶ;->ˈ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    :cond_e
    if-eqz v4, :cond_f

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    :goto_9
    filled-new-array {v4, v15, v9, v8}, [Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_a
    const/4 v11, 0x4

    if-ge v7, v11, :cond_11

    aget-object v11, v4, v7

    move-object/from16 v17, v4

    if-eqz v11, :cond_10

    const-string v4, "-"

    invoke-virtual {v11, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v17

    goto :goto_a

    :cond_11
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v7, :cond_12

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v23, v5

    move-object/from16 v5, v22

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v23

    goto :goto_b

    :cond_12
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_13

    invoke-static {v4}, Lﹳˎ/ᵎﹶ;->ᵔᵢ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v22, v4

    goto :goto_c

    :cond_13
    const/16 v22, 0x0

    :goto_c
    if-eqz v16, :cond_14

    const/16 v17, 0x4

    goto :goto_d

    :cond_14
    move/from16 v17, v30

    :goto_d
    invoke-static/range {v17 .. v17}, Lﹳˎ/ˆʾ;->ﹳٴ(I)I

    move-result v25

    new-instance v16, Lʾٴ/ˈ;

    move-object/from16 v24, v8

    move-object/from16 v23, v9

    move-object/from16 v17, v15

    invoke-direct/range {v16 .. v25}, Lʾٴ/ˈ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lﹳˎ/ʻٴ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v4, v16

    new-instance v5, Lʾٴ/ⁱˊ;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v7, v5, Lʾٴ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v9, Lˏـ/ᵎﹶ;

    invoke-direct {v9}, Lˏـ/ᵎﹶ;-><init>()V

    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, v5, Lʾٴ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    iput-object v13, v5, Lʾٴ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    iput-object v4, v5, Lʾٴ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    iput-object v12, v5, Lʾٴ/ⁱˊ;->ˈ:Ljava/lang/Object;

    iput-object v14, v5, Lʾٴ/ⁱˊ;->ʽ:Ljava/lang/Object;

    iput-object v3, v5, Lʾٴ/ⁱˊ;->ˑﹳ:Ljava/lang/Object;

    iput-object v6, v5, Lʾٴ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    iput-object v10, v5, Lʾٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    invoke-static {v12}, Lﹳˋ/ʼˎ;->ˊʻ(Lᵔⁱ/ᵔʾ;)Lʾٴ/ﹳٴ;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v3, v5, Lʾٴ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, v5, Lʾٴ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v6, v5, Lʾٴ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    const-string v7, "com.google.firebase.crashlytics"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "existing_instance_identifier"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v5, Lʾٴ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast v6, Lʾٴ/ˈ;

    iget-object v6, v6, Lʾٴ/ˈ;->ﾞᴵ:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move/from16 v2, v30

    invoke-virtual {v5, v2}, Lʾٴ/ⁱˊ;->ﹳٴ(I)Lʾٴ/ﹳٴ;

    move-result-object v6

    if-eqz v6, :cond_15

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˏـ/ᵎﹶ;

    invoke-virtual {v1, v6}, Lˏـ/ᵎﹶ;->ⁱˊ(Ljava/lang/Object;)V

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/ᵎ;->ᵔᵢ(Ljava/lang/Object;)Lˏـ/ˉʿ;

    move-result-object v1

    goto :goto_e

    :cond_15
    const/4 v13, 0x3

    invoke-virtual {v5, v13}, Lʾٴ/ⁱˊ;->ﹳٴ(I)Lʾٴ/ﹳٴ;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˏـ/ᵎﹶ;

    invoke-virtual {v3, v2}, Lˏـ/ᵎﹶ;->ⁱˊ(Ljava/lang/Object;)V

    :cond_16
    iget-object v2, v5, Lʾٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v2, Lʼٴ/ٴᵢ;

    iget-object v3, v2, Lʼٴ/ٴᵢ;->ˊʻ:Ljava/lang/Object;

    check-cast v3, Lˏـ/ᵎﹶ;

    iget-object v3, v3, Lˏـ/ᵎﹶ;->ﹳٴ:Lˏـ/ˉʿ;

    iget-object v4, v2, Lʼٴ/ٴᵢ;->ʽʽ:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v2, v2, Lʼٴ/ٴᵢ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lˏـ/ᵎﹶ;

    iget-object v2, v2, Lˏـ/ᵎﹶ;->ﹳٴ:Lˏـ/ˉʿ;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v2}, Lˈᵔ/ⁱˊ;->ﹳٴ(Lˏـ/ˉʿ;Lˏـ/ˉʿ;)Lˏـ/ˉʿ;

    move-result-object v2

    iget-object v3, v1, Lˈᵔ/ˈ;->ﹳٴ:Lˈᵔ/ʽ;

    new-instance v4, Lﹳʽ/ˊʻ;

    const/16 v6, 0xb

    invoke-direct {v4, v5, v6, v1}, Lﹳʽ/ˊʻ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Lˏـ/ˉʿ;->ᵔᵢ(Ljava/util/concurrent/Executor;Lˏـ/ﾞᴵ;)Lˏـ/ˉʿ;

    move-result-object v1

    :goto_e
    new-instance v2, Lـﹶ/ʾᵎ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v0, v2}, Lˏـ/ˉʿ;->ﹳٴ(Ljava/util/concurrent/Executor;Lˏـ/ˈ;)V

    move-object/from16 v6, v31

    iget-object v0, v6, Lﹳˎ/ᵔﹳ;->ʼˎ:Lˑˋ/ˈ;

    const-string v1, "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app\'s build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin"

    iget-object v2, v6, Lﹳˎ/ᵔﹳ;->ﹳٴ:Landroid/content/Context;

    const-string v3, "com.crashlytics.RequireBuildId"

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_18

    const-string v7, "bool"

    invoke-static {v2, v3, v7}, Lﹳˎ/ᵎﹶ;->ˈ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_17

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    :goto_f
    move-object/from16 v4, v35

    goto :goto_10

    :cond_17
    const-string v4, "string"

    invoke-static {v2, v3, v4}, Lﹳˎ/ᵎﹶ;->ˈ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_18

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_f

    :cond_18
    move-object/from16 v4, v35

    const/4 v3, 0x1

    :goto_10
    iget-object v7, v4, Lﹳˎ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    const-string v8, "."

    const-string v9, ".     |  |"

    if-nez v3, :cond_19

    const-string v1, "Configured not to require a build ID."

    move-object/from16 v3, v47

    const/4 v8, 0x2

    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1a

    const/4 v8, 0x0

    nop

    goto :goto_11

    :cond_19
    move-object/from16 v3, v47

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1f

    :cond_1a
    :goto_11
    new-instance v1, Lﹳˎ/ˑﹳ;

    invoke-direct {v1}, Lﹳˎ/ˑﹳ;-><init>()V

    iget-object v1, v1, Lﹳˎ/ˑﹳ;->ﹳٴ:Ljava/lang/String;

    :try_start_2
    new-instance v7, Lـʾ/ᵔﹳ;

    const-string v8, "crash_marker"

    const/16 v9, 0x12

    invoke-direct {v7, v8, v9, v0}, Lـʾ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object v7, v6, Lﹳˎ/ᵔﹳ;->ﾞᴵ:Lـʾ/ᵔﹳ;

    new-instance v7, Lـʾ/ᵔﹳ;

    const-string v8, "initialization_marker"

    invoke-direct {v7, v8, v9, v0}, Lـʾ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object v7, v6, Lﹳˎ/ᵔﹳ;->ˑﹳ:Lـʾ/ᵔﹳ;

    new-instance v7, Lˉˆ/ˎـ;

    move-object/from16 v8, v28

    invoke-direct {v7, v1, v0, v8}, Lˉˆ/ˎـ;-><init>(Ljava/lang/String;Lˑˋ/ˈ;Lˈᵔ/ˈ;)V

    new-instance v9, Lˆי/ˑﹳ;

    invoke-direct {v9, v0}, Lˆי/ˑﹳ;-><init>(Lˑˋ/ˈ;)V

    new-instance v0, Lـʾ/ᵔﹳ;

    new-instance v10, Lٴﾞ/ˆʾ;

    const/16 v11, 0x19

    invoke-direct {v10, v11}, Lٴﾞ/ˆʾ;-><init>(I)V

    const/4 v11, 0x1

    new-array v11, v11, [Lـﾞ/ﹳٴ;

    const/16 v46, 0x0

    aput-object v10, v11, v46

    invoke-direct {v0, v11}, Lـʾ/ᵔﹳ;-><init>([Lـﾞ/ﹳٴ;)V

    iget-object v10, v6, Lﹳˎ/ᵔﹳ;->ᵔʾ:Lˊⁱ/ˑﹳ;

    iget-object v10, v10, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v10, Lˏ/ˉʿ;

    new-instance v11, Lˑʿ/ˏי;

    const/16 v12, 0x15

    invoke-direct {v11, v12}, Lˑʿ/ˏי;-><init>(I)V

    invoke-virtual {v10, v11}, Lˏ/ˉʿ;->ﹳٴ(Lʾﹳ/ﹳٴ;)V

    iget-object v10, v6, Lﹳˎ/ᵔﹳ;->ﹳٴ:Landroid/content/Context;

    iget-object v11, v6, Lﹳˎ/ᵔﹳ;->ᵔᵢ:Lﹳˎ/ʻٴ;

    iget-object v12, v6, Lﹳˎ/ᵔﹳ;->ʼˎ:Lˑˋ/ˈ;

    iget-object v13, v6, Lﹳˎ/ᵔﹳ;->ʽ:Lˑʼ/ᵎˊ;

    iget-object v14, v6, Lﹳˎ/ᵔﹳ;->ﾞʻ:Lﹳˎ/ʼˎ;

    iget-object v15, v6, Lﹳˎ/ᵔﹳ;->ˉˆ:Lˈᵔ/ˈ;

    move-object/from16 v38, v0

    move-object/from16 v35, v4

    move-object/from16 v39, v5

    move-object/from16 v37, v7

    move-object/from16 v36, v9

    move-object/from16 v32, v10

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    move-object/from16 v42, v15

    invoke-static/range {v32 .. v42}, Lﹳʽ/ᴵᵔ;->ᵎﹶ(Landroid/content/Context;Lﹳˎ/ʻٴ;Lˑˋ/ˈ;Lﹳˎ/ﹳٴ;Lˆי/ˑﹳ;Lˉˆ/ˎـ;Lـʾ/ᵔﹳ;Lʾٴ/ⁱˊ;Lˑʼ/ᵎˊ;Lﹳˎ/ʼˎ;Lˈᵔ/ˈ;)Lﹳʽ/ᴵᵔ;

    move-result-object v41

    move-object/from16 v0, v39

    new-instance v32, Lﹳˎ/ˉʿ;

    iget-object v4, v6, Lﹳˎ/ᵔﹳ;->ﹳٴ:Landroid/content/Context;

    iget-object v5, v6, Lﹳˎ/ᵔﹳ;->ᵔᵢ:Lﹳˎ/ʻٴ;

    iget-object v7, v6, Lﹳˎ/ᵔﹳ;->ⁱˊ:Lʼٴ/ٴᵢ;

    iget-object v9, v6, Lﹳˎ/ᵔﹳ;->ʼˎ:Lˑˋ/ˈ;

    iget-object v10, v6, Lﹳˎ/ᵔﹳ;->ﾞᴵ:Lـʾ/ᵔﹳ;

    iget-object v11, v6, Lﹳˎ/ᵔﹳ;->ˉʿ:Lיˎ/ⁱˊ;

    iget-object v12, v6, Lﹳˎ/ᵔﹳ;->ٴﹶ:Lᵎˉ/ﹳٴ;

    iget-object v13, v6, Lﹳˎ/ᵔﹳ;->ﾞʻ:Lﹳˎ/ʼˎ;

    iget-object v14, v6, Lﹳˎ/ᵔﹳ;->ˉˆ:Lˈᵔ/ˈ;

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v42, v11

    move-object/from16 v43, v12

    move-object/from16 v44, v13

    move-object/from16 v45, v14

    move-object/from16 v38, v35

    move-object/from16 v40, v36

    move-object/from16 v39, v37

    move-object/from16 v35, v7

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    invoke-direct/range {v32 .. v45}, Lﹳˎ/ˉʿ;-><init>(Landroid/content/Context;Lﹳˎ/ʻٴ;Lʼٴ/ٴᵢ;Lˑˋ/ˈ;Lـʾ/ᵔﹳ;Lﹳˎ/ﹳٴ;Lˉˆ/ˎـ;Lˆי/ˑﹳ;Lﹳʽ/ᴵᵔ;Lיˎ/ⁱˊ;Lˎ/ﹳٴ;Lﹳˎ/ʼˎ;Lˈᵔ/ˈ;)V

    move-object/from16 v4, v32

    iput-object v4, v6, Lﹳˎ/ᵔﹳ;->ᵎﹶ:Lﹳˎ/ˉʿ;

    iget-object v4, v6, Lﹳˎ/ᵔﹳ;->ˑﹳ:Lـʾ/ᵔﹳ;

    iget-object v5, v4, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lˑˋ/ˈ;

    iget-object v4, v4, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Ljava/io/File;

    iget-object v5, v5, Lˑˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Ljava/io/File;

    invoke-direct {v7, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    iget-object v5, v8, Lˈᵔ/ˈ;->ﹳٴ:Lˈᵔ/ʽ;

    iget-object v5, v5, Lˈᵔ/ʽ;->ʾˋ:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/parse/ʾᵎ;

    const/4 v9, 0x5

    invoke-direct {v7, v9, v6}, Lcom/parse/ʾᵎ;-><init>(ILjava/lang/Object;)V

    invoke-interface {v5, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x3

    invoke-interface {v5, v9, v10, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    :catch_0
    iget-object v5, v6, Lﹳˎ/ᵔﹳ;->ᵎﹶ:Lﹳˎ/ˉʿ;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v7

    iget-object v9, v5, Lﹳˎ/ˉʿ;->ˑﹳ:Lˈᵔ/ˈ;

    iget-object v9, v9, Lˈᵔ/ˈ;->ﹳٴ:Lˈᵔ/ʽ;

    new-instance v10, Lᐧᵢ/ˉʿ;

    const/4 v11, 0x5

    invoke-direct {v10, v5, v11, v1}, Lᐧᵢ/ˉʿ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v9, v10}, Lˈᵔ/ʽ;->ﹳٴ(Ljava/lang/Runnable;)Lˏـ/ˉʿ;

    new-instance v1, Lᐧﹳ/ʽ;

    const/16 v9, 0xd

    invoke-direct {v1, v9, v5}, Lᐧﹳ/ʽ;-><init>(ILjava/lang/Object;)V

    new-instance v9, Lﹳˎ/יـ;

    iget-object v10, v5, Lﹳˎ/ˉʿ;->ˆʾ:Lיˎ/ⁱˊ;

    invoke-direct {v9, v1, v0, v7, v10}, Lﹳˎ/יـ;-><init>(Lᐧﹳ/ʽ;Lʾٴ/ⁱˊ;Ljava/lang/Thread$UncaughtExceptionHandler;Lיˎ/ⁱˊ;)V

    iput-object v9, v5, Lﹳˎ/ˉʿ;->ᵔʾ:Lﹳˎ/יـ;

    invoke-static {v9}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    if-eqz v4, :cond_1d

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v2, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "connectivity"

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1b
    const-string v1, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    const/4 v13, 0x3

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v8, 0x0

    nop

    :cond_1c
    invoke-virtual {v6, v0}, Lﹳˎ/ᵔﹳ;->ⁱˊ(Lʾٴ/ⁱˊ;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_13

    :catch_1
    move-exception v0

    goto :goto_12

    :cond_1d
    const-string v1, "Successfully configured exception handler."

    const/4 v13, 0x3

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v12, 0x0

    nop

    :cond_1e
    iget-object v1, v8, Lˈᵔ/ˈ;->ﹳٴ:Lˈᵔ/ʽ;

    new-instance v2, Lﹳˎ/ᵔʾ;

    const/4 v8, 0x0

    invoke-direct {v2, v6, v0, v8}, Lﹳˎ/ᵔʾ;-><init>(Lﹳˎ/ᵔﹳ;Lʾٴ/ⁱˊ;I)V

    invoke-virtual {v1, v2}, Lˈᵔ/ʽ;->ﹳٴ(Ljava/lang/Runnable;)Lˏـ/ˉʿ;

    goto :goto_13

    :goto_12
    const-string v1, "Crashlytics was not started due to an exception during initialization"

    nop

    const/4 v8, 0x0

    iput-object v8, v6, Lﹳˎ/ᵔﹳ;->ᵎﹶ:Lﹳˎ/ˉʿ;

    :goto_13
    new-instance v15, Lᵎˉ/ⁱˊ;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    goto :goto_14

    :cond_1f
    nop

    const-string v0, ".     |  | "

    nop

    nop

    nop

    const-string v0, ".   \\ |  | /"

    nop

    const-string v0, ".    \\    /"

    nop

    const-string v0, ".     \\  /"

    nop

    const-string v0, ".      \\/"

    nop

    nop

    nop

    nop

    const-string v0, ".      /\\"

    nop

    const-string v0, ".     /  \\"

    nop

    const-string v0, ".    /    \\"

    nop

    const-string v0, ".   / |  | \\"

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catch_2
    move-exception v0

    move-object v3, v5

    const-string v1, "Error retrieving app package info."

    nop

    const/4 v15, 0x0

    :goto_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v0, v26

    const-wide/16 v4, 0x10

    cmp-long v2, v0, v4

    if-lez v2, :cond_20

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Initializing Crashlytics blocked main for "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x3

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v8, 0x0

    nop

    :cond_20
    return-object v15
.end method

.method public ˑﹳ(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    iget v0, p0, Lٴˉ/ﹳٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵢⁱ/ʽʽ;

    :goto_0
    invoke-virtual {v0, p1}, Lʽˋ/ʾᵎ;->ˊﹳ(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵢʿ/ᴵˑ;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵢʿ/ʾᵎ;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ٴﹶ(Lˑי/ʽ;)Lˈـ/ـˆ;
    .locals 23

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lٴי/ⁱˊ;

    iget-object v3, v0, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Ljava/net/URL;

    const-string v4, "CctTransportBackend"

    invoke-static {v4}, Lˉᵎ/ⁱˊ;->ʼʼ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v3, v7, v8

    const-string v10, "Making request to: %s"

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    nop

    :cond_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    const/16 v5, 0x7530

    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v5, v2, Lٴי/ⁱˊ;->ᵎﹶ:I

    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v3, v9}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v3, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v5, "POST"

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v5, "User-Agent"

    const-string v7, "datatransport/3.3.0 android/"

    invoke-virtual {v3, v5, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Encoding"

    const-string v7, "gzip"

    invoke-virtual {v3, v5, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "application/json"

    const-string v11, "Content-Type"

    invoke-virtual {v3, v11, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Accept-Encoding"

    invoke-virtual {v3, v10, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lˑי/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_1

    const-string v12, "X-Goog-Api-Key"

    invoke-virtual {v3, v12, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v15, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v15, v14}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    iget-object v2, v2, Lٴי/ⁱˊ;->ﹳٴ:Lﹳי/ʽ;

    iget-object v0, v0, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᐧٴ/ˉʿ;

    move/from16 v22, v8

    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-direct {v10, v15}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v8, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v16, Lˆˉ/ˑﹳ;

    iget-object v2, v2, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lˆˉ/ˈ;

    iget-object v10, v2, Lˆˉ/ˈ;->ﹳٴ:Ljava/util/HashMap;

    iget-object v12, v2, Lˆˉ/ˈ;->ⁱˊ:Ljava/util/HashMap;

    iget-object v13, v2, Lˆˉ/ˈ;->ʽ:Lˆˉ/ﹳٴ;

    iget-boolean v2, v2, Lˆˉ/ˈ;->ˈ:Z

    move/from16 v21, v2

    move-object/from16 v17, v8

    move-object/from16 v18, v10

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v21}, Lˆˉ/ˑﹳ;-><init>(Ljava/io/Writer;Ljava/util/HashMap;Ljava/util/HashMap;Lˆˉ/ﹳٴ;Z)V

    move-object/from16 v2, v16

    invoke-virtual {v2, v0}, Lˆˉ/ˑﹳ;->ᵔᵢ(Ljava/lang/Object;)Lˆˉ/ˑﹳ;

    invoke-virtual {v2}, Lˆˉ/ˑﹳ;->ˆʾ()V

    iget-object v0, v2, Lˆˉ/ˑﹳ;->ⁱˊ:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v14, :cond_2

    :try_start_4
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_d

    :catch_1
    move-exception v0

    goto/16 :goto_d

    :catch_2
    move-exception v0

    :goto_0
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    goto/16 :goto_e

    :catch_3
    move-exception v0

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Lˉᵎ/ⁱˊ;->ʼʼ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v22

    const-string v2, "Status Code: %d"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    :cond_3
    const-string v2, "Content-Type: %s"

    invoke-virtual {v3, v11}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v2, v6}, Lˉᵎ/ⁱˊ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "Content-Encoding: %s"

    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v2, v6}, Lˉᵎ/ⁱˊ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v2, 0x12e

    if-eq v0, v2, :cond_b

    const/16 v2, 0x12d

    if-eq v0, v2, :cond_b

    const/16 v2, 0x133

    if-ne v0, v2, :cond_4

    goto :goto_7

    :cond_4
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_5

    new-instance v2, Lˈـ/ـˆ;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v0, v5, v3, v4}, Lˈـ/ـˆ;-><init>(ILjava/net/URL;J)V

    return-object v2

    :cond_5
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    :try_start_5
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :cond_6
    move-object v3, v2

    :goto_2
    :try_start_6
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v4}, Lᐧٴ/ʽﹳ;->ﹳٴ(Ljava/io/BufferedReader;)Lᐧٴ/ʽﹳ;

    move-result-object v4

    iget-wide v4, v4, Lᐧٴ/ʽﹳ;->ﹳٴ:J

    new-instance v6, Lˈـ/ـˆ;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v4, v5}, Lˈـ/ـˆ;-><init>(ILjava/net/URL;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_7

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_5

    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_8
    return-object v6

    :catchall_1
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_9

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_9
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_5
    if-eqz v2, :cond_a

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    throw v3

    :cond_b
    :goto_7
    const-string v2, "Location"

    invoke-virtual {v3, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lˈـ/ـˆ;

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    invoke-direct {v3, v0, v4, v5, v6}, Lˈـ/ـˆ;-><init>(ILjava/net/URL;J)V

    return-object v3

    :catchall_4
    move-exception v0

    move-object v2, v0

    goto :goto_b

    :goto_8
    move-object v2, v0

    goto :goto_9

    :catchall_5
    move-exception v0

    goto :goto_8

    :goto_9
    :try_start_b
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    :try_start_c
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :goto_b
    if-eqz v14, :cond_c

    :try_start_d
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_c

    :catchall_7
    move-exception v0

    :try_start_e
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_c
    throw v2
    :try_end_e
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_2
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :goto_d
    const-string v2, "Couldn\'t encode request, returning with 400"

    invoke-static {v4, v2, v0}, Lˉᵎ/ⁱˊ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v0, Lˈـ/ـˆ;

    const/16 v2, 0x190

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-direct {v0, v2, v7, v5, v6}, Lˈـ/ـˆ;-><init>(ILjava/net/URL;J)V

    goto :goto_f

    :goto_e
    const-string v2, "Couldn\'t open connection, returning with 500"

    invoke-static {v4, v2, v0}, Lˉᵎ/ⁱˊ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v0, Lˈـ/ـˆ;

    const/16 v2, 0x1f4

    invoke-direct {v0, v2, v7, v5, v6}, Lˈـ/ـˆ;-><init>(ILjava/net/URL;J)V

    :goto_f
    return-object v0
.end method

.method public ᵎﹶ(Lˏـ/ˉʿ;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public ᵔᵢ(Ljava/lang/Object;)V
    .locals 5

    .prologue
    iget v0, p0, Lٴˉ/ﹳٴ;->ʾˋ:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵢⁱ/ʽ;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0}, Lᵢⁱ/ʽ;->ˏⁱ()V

    return-void

    :sswitch_0
    iget-object v0, p0, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵢʿ/ˊᵔ;

    check-cast p1, Lˑﹳ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Lˑﹳ/ﹳٴ;->ʾˋ:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lᵢʿ/ˊᵔ;->ˋˊ:J

    :cond_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᐧˈ/ʼᐧ;

    check-cast p1, Lˑﹳ/ﹳٴ;

    iget v1, p1, Lˑﹳ/ﹳٴ;->ʾˋ:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lᐧˈ/ʼᐧ;->ˏⁱ()Lᐧˈ/יـ;

    move-result-object v1

    iget-object p1, p1, Lˑﹳ/ﹳٴ;->ᴵˊ:Landroid/content/Intent;

    const-string v2, "ar.tvplayer.tv.settings.TvGuideUrl"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/lifecycle/ʼˈ;->ˑﹳ(Landroidx/lifecycle/ᵎᵔ;)Lˎᐧ/ﹳٴ;

    move-result-object v1

    new-instance v2, Lᐧˈ/ﹳᐧ;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4, v3}, Lᐧˈ/ﹳᐧ;-><init>(Ljava/lang/String;Lˈי/ˈ;I)V

    const/4 p1, 0x3

    invoke-static {v1, v4, v2, p1}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Lᐧˈ/ʼᐧ;->ﹶˎ:J

    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public ⁱˊ(Ljava/lang/Object;)V
    .locals 1

    .prologue
    iget v0, p0, Lٴˉ/ﹳٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    check-cast p1, Lʽⁱ/ᵔי;

    invoke-interface {p1, v0}, Lʽⁱ/ᵔי;->ﹳᐧ(Ljava/util/List;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʽⁱ/ٴᵢ;

    check-cast p1, Lʽⁱ/ᵔי;

    invoke-interface {p1, v0}, Lʽⁱ/ᵔי;->ᵔᵢ(Lʽⁱ/ٴᵢ;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lⁱי/ʻٴ;

    check-cast p1, Lʽⁱ/ᵔי;

    iget-object v0, v0, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    iget-object v0, v0, Lⁱי/ʼʼ;->ᐧﹶ:Lʽⁱ/ᴵᵔ;

    invoke-interface {p1, v0}, Lʽⁱ/ᵔי;->ˈʿ(Lʽⁱ/ᴵᵔ;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lⁱˉ/ʽ;

    check-cast p1, Lʽⁱ/ᵔי;

    invoke-interface {p1, v0}, Lʽⁱ/ᵔי;->ˑٴ(Lⁱˉ/ʽ;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʽⁱ/ˉـ;

    check-cast p1, Lʽⁱ/ᵔי;

    invoke-interface {p1, v0}, Lʽⁱ/ᵔי;->ʼᐧ(Lʽⁱ/ˉـ;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʽⁱ/ˑﹳ;

    check-cast p1, Lʽⁱ/ᵔי;

    invoke-interface {p1, v0}, Lʽⁱ/ᵔי;->ᵔﹳ(Lʽⁱ/ˑﹳ;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʽⁱ/ᴵᵔ;

    check-cast p1, Lʽⁱ/ᵔי;

    invoke-interface {p1, v0}, Lʽⁱ/ᵔי;->ˈʿ(Lʽⁱ/ᴵᵔ;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ﹳٴ(Lʽⁱ/ᴵˊ;)Lⁱᴵ/ﾞʻ;
    .locals 0

    iget-object p1, p0, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lⁱᴵ/ﾞʻ;

    return-object p1
.end method

.method public ﾞᴵ(ILʽⁱ/ـˏ;[I)Lʼʻ/ʿᵢ;
    .locals 7

    .prologue
    iget-object v0, p0, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lﹶʽ/ˆʾ;

    invoke-static {}, Lʼʻ/ᵎⁱ;->ˆʾ()Lʼʻ/ˊʻ;

    move-result-object v0

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    iget v1, p2, Lʽⁱ/ـˏ;->ﹳٴ:I

    if-ge v4, v1, :cond_0

    new-instance v1, Lﹶʽ/ᵎﹶ;

    aget v6, p3, v4

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lﹶʽ/ᵎﹶ;-><init>(ILʽⁱ/ـˏ;ILﹶʽ/ˆʾ;I)V

    invoke-virtual {v0, v1}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lʼʻ/ˊʻ;->ᵎﹶ()Lʼʻ/ʿᵢ;

    move-result-object p1

    return-object p1
.end method
