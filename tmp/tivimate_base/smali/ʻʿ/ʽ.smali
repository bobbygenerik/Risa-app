.class public final synthetic Lʻʿ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᐧˎ/ٴﹶ;
.implements Lᐧˎ/ˆʾ;
.implements Lˉˆ/ﹶˎ;
.implements Lʾﹳ/ﹳٴ;
.implements Lˏ/ˈ;
.implements Lʻˎ/ﹳٴ;
.implements Lʽﹳ/ʼˎ;
.implements Lᵔـ/ﾞᴵ;
.implements Lᐧˎ/ﾞᴵ;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lʻʿ/ʽ;->ʾˋ:I

    iput-object p1, p0, Lʻʿ/ʽ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Lʻʿ/ʽ;->ʽʽ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lʻʿ/ʽ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻʿ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Lᴵʾ/ᵔᵢ;

    iput-object p2, p0, Lʻʿ/ʽ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lʻʿ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v1, p0, Lʻʿ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˎʾ/ᵎﹶ;

    check-cast p1, Lﹳᵢ/ٴᵢ;

    iget v2, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﹳᵢ/ᵢˏ;

    invoke-interface {p1, v2, v0, v1}, Lﹳᵢ/ٴᵢ;->יـ(ILﹳᵢ/ᵢˏ;Lˎʾ/ᵎﹶ;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    iget-object v0, p0, Lʻʿ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵔـ/ᵔᵢ;

    iget-object v1, p0, Lʻʿ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˉˋ/ʼˎ;

    move-object v2, p1

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    iget-object p1, v0, Lᵔـ/ᵔᵢ;->ˈٴ:Lᵔـ/ﹳٴ;

    iget v3, p1, Lᵔـ/ﹳٴ;->ⁱˊ:I

    invoke-virtual {v0, v2, v1, v3}, Lᵔـ/ᵔᵢ;->ﹳᐧ(Landroid/database/sqlite/SQLiteDatabase;Lˉˋ/ʼˎ;I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {}, Lᴵˆ/ʽ;->values()[Lᴵˆ/ʽ;

    move-result-object v3

    array-length v4, v3

    const/4 v11, 0x0

    move v5, v11

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    iget-object v7, v1, Lˉˋ/ʼˎ;->ʽ:Lᴵˆ/ʽ;

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    iget v7, p1, Lᵔـ/ﹳٴ;->ⁱˊ:I

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v7, v8

    if-gtz v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v6}, Lˉˋ/ʼˎ;->ⁱˊ(Lᴵˆ/ʽ;)Lˉˋ/ʼˎ;

    move-result-object v6

    invoke-virtual {v0, v2, v6, v7}, Lᵔـ/ᵔᵢ;->ﹳᐧ(Landroid/database/sqlite/SQLiteDatabase;Lˉˋ/ʼˎ;I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event_id IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, v11

    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v12, 0x1

    if-ge v1, v3, :cond_4

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᵔـ/ⁱˊ;

    iget-wide v3, v3, Lᵔـ/ⁱˊ;->ﹳٴ:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v12

    if-ge v1, v3, :cond_3

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "name"

    const-string v3, "value"

    const-string v4, "event_id"

    filled-new-array {v4, v1, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "event_metadata"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_4
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance v2, Lᵔـ/ᵎﹶ;

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lᵔـ/ᵎﹶ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᵔـ/ⁱˊ;

    iget-wide v2, v1, Lᵔـ/ⁱˊ;->ﹳٴ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    iget-object v4, v1, Lᵔـ/ⁱˊ;->ʽ:Lˉˋ/ᵔᵢ;

    invoke-virtual {v4}, Lˉˋ/ᵔᵢ;->ʽ()Lʼי/ﹳٴ;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lᵔـ/ᵎﹶ;

    iget-object v7, v6, Lᵔـ/ᵎﹶ;->ﹳٴ:Ljava/lang/String;

    iget-object v6, v6, Lᵔـ/ᵎﹶ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Lʼי/ﹳٴ;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    iget-object v1, v1, Lᵔـ/ⁱˊ;->ⁱˊ:Lˉˋ/ʼˎ;

    invoke-virtual {v4}, Lʼי/ﹳٴ;->ⁱˊ()Lˉˋ/ᵔᵢ;

    move-result-object v4

    new-instance v5, Lᵔـ/ⁱˊ;

    invoke-direct {v5, v2, v3, v1, v4}, Lᵔـ/ⁱˊ;-><init>(JLˉˋ/ʼˎ;Lˉˋ/ᵔᵢ;)V

    invoke-interface {v0, v5}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    return-object v10

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 11

    .prologue
    iget v0, p0, Lʻʿ/ʽ;->ʾˋ:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lʻʿ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﾞᵔ/ˉٴ;

    iget-object v1, p0, Lʻʿ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˉʾ/ᵎﹶ;

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ʿ()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v5, Lʿˋ/ˉʿ;->ﹳٴ:Z

    if-nez v5, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ﹳـ(Lˑʼ/ᴵᵔ;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v9, 0x0

    if-ne p1, v4, :cond_3

    invoke-virtual {v0}, Lﾞᵔ/ˉٴ;->ᵢי()Lﾞᵔ/ˆﾞ;

    move-result-object p1

    iget-wide v6, v1, Lˉʾ/ᵎﹶ;->ﹳٴ:J

    iget-boolean v3, v1, Lˉʾ/ᵎﹶ;->ʼʼ:Z

    xor-int/lit8 v8, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/lifecycle/ʼˈ;->ˑﹳ(Landroidx/lifecycle/ᵎᵔ;)Lˎᐧ/ﹳٴ;

    move-result-object p1

    new-instance v5, Lʼⁱ/ˆﾞ;

    const/16 v10, 0x9

    invoke-direct/range {v5 .. v10}, Lʼⁱ/ˆﾞ;-><init>(JZLˈי/ˈ;I)V

    invoke-static {p1, v9, v5, v2}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    iget-boolean p1, v1, Lˉʾ/ᵎﹶ;->ʼʼ:Z

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ʿ()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f130432

    invoke-virtual {v0, v1}, Lˑʼ/ᴵᵔ;->ᐧᴵ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lʿˋ/ˋᵔ;->ᐧᴵ(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    move v3, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ʿ()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1303ff

    invoke-virtual {v0, v1}, Lˑʼ/ᴵᵔ;->ᐧᴵ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lʿˋ/ˋᵔ;->ᐧᴵ(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    invoke-static {v0, v1, v9, v2}, Lﾞᵔ/ˉٴ;->ˋˋ(Lﾞᵔ/ˉٴ;Lˉʾ/ᵎﹶ;Lᵔᵔ/ⁱˊ;I)V

    goto :goto_0

    :cond_4
    :goto_1
    return v3

    :sswitch_0
    iget-object v0, p0, Lʻʿ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﾞᵔ/ˉٴ;

    iget-object v5, p0, Lʻʿ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lˉʾ/ˑ;

    sget-object v6, Lﾞᵔ/ˉٴ;->ˆﹳ:[Lᐧˆ/ˈ;

    sget-boolean v6, Lʿˋ/ˉʿ;->ﹳٴ:Z

    if-nez v6, :cond_5

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ﹳـ(Lˑʼ/ᴵᵔ;)V

    goto :goto_2

    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-ne p1, v4, :cond_6

    invoke-virtual {v0}, Lﾞᵔ/ˉٴ;->ᵢי()Lﾞᵔ/ˆﾞ;

    move-result-object p1

    iget-wide v5, v5, Lˉʾ/ˑ;->ﹳٴ:J

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/lifecycle/ʼˈ;->ˑﹳ(Landroidx/lifecycle/ᵎᵔ;)Lˎᐧ/ﹳٴ;

    move-result-object p1

    new-instance v3, Lˉˊ/ﹳᐧ;

    const/16 v7, 0x1b

    invoke-direct {v3, v7, v5, v6, v1}, Lˉˊ/ﹳᐧ;-><init>(IJLˈי/ˈ;)V

    invoke-static {p1, v1, v3, v2}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    const-string p1, ""

    iput-object p1, v0, Lﾞᵔ/ˉٴ;->ᵔⁱ:Ljava/lang/String;

    iput-boolean v4, v0, Lﾞᵔ/ˉٴ;->ˊﹳ:Z

    move v3, v4

    :cond_6
    :goto_2
    return v3

    :sswitch_1
    iget-object v0, p0, Lʻʿ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᴵʽ/ˉʿ;

    iget-object v2, p0, Lʻʿ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lᴵʽ/ⁱˊ;

    sget-boolean v5, Lʿˋ/ˉʿ;->ﹳٴ:Z

    if-nez v5, :cond_7

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ﹳـ(Lˑʼ/ᴵᵔ;)V

    goto :goto_3

    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-ne p1, v4, :cond_a

    iget-object p1, v2, Lᴵʽ/ⁱˊ;->ˈⁱ:Lᐧᵎ/ʽʽ;

    if-eqz p1, :cond_9

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    instance-of v2, v0, Lᴵʽ/ʾᵎ;

    if-eqz v2, :cond_8

    move-object v1, v0

    check-cast v1, Lᴵʽ/ʾᵎ;

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1, p1, v4}, Lᴵʽ/ʾᵎ;->ˑˉ(Lᐧᵎ/ʽʽ;Z)V

    :cond_9
    move v3, v4

    :cond_a
    :goto_3
    return v3

    :sswitch_2
    iget-object v0, p0, Lʻʿ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾʼ/ﹳـ;

    iget-object v5, p0, Lʻʿ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lˉʾ/ʻˋ;

    sget-object v6, Lʾʼ/ﹳـ;->ˊﾞ:[Lᐧˆ/ˈ;

    sget-boolean v6, Lʿˋ/ˉʿ;->ﹳٴ:Z

    if-nez v6, :cond_b

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ﹳـ(Lˑʼ/ᴵᵔ;)V

    goto :goto_4

    :cond_b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-ne p1, v4, :cond_c

    invoke-static {v0}, Lʿˋ/ˉʿ;->ˆﾞ(Lˑʼ/ᴵᵔ;)Landroidx/lifecycle/ʼᐧ;

    move-result-object p1

    new-instance v3, Lʼⁱ/ˏⁱ;

    invoke-direct {v3, v5, v0, v1, v2}, Lʼⁱ/ˏⁱ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lˈי/ˈ;I)V

    invoke-static {p1, v1, v3, v2}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    move v3, v4

    :cond_c
    :goto_4
    return v3

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x7 -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public ʼˎ(Lʽﹳ/ᵔᵢ;)Ljava/lang/Object;
    .locals 6

    .prologue
    iget v0, p0, Lʻʿ/ʽ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʻʿ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lʻʿ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lᴵⁱ/ﹳٴ;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v3, Lᴵˋ/ᵔʾ;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lᴵˋ/ᵔʾ;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    iget-object v4, p1, Lʽﹳ/ᵔᵢ;->ʽ:Lʽﹳ/ᵔʾ;

    if-eqz v4, :cond_0

    sget-object v5, Lᴵˋ/ٴﹶ;->ʾˋ:Lᴵˋ/ٴﹶ;

    invoke-virtual {v4, v3, v5}, Lʽﹳ/ᵎﹶ;->ﹳٴ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    new-instance v3, Lcom/parse/ˊﾞ;

    const/16 v4, 0xb

    invoke-direct {v3, v2, p1, v1, v4}, Lcom/parse/ˊﾞ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lʻʿ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lʻʿ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˆﹶ/ʼᐧ;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v3, Lᴵˋ/ᵔʾ;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lᴵˋ/ᵔʾ;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    iget-object v4, p1, Lʽﹳ/ᵔᵢ;->ʽ:Lʽﹳ/ᵔʾ;

    if-eqz v4, :cond_1

    sget-object v5, Lᴵˋ/ٴﹶ;->ʾˋ:Lᴵˋ/ٴﹶ;

    invoke-virtual {v4, v3, v5}, Lʽﹳ/ᵎﹶ;->ﹳٴ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    new-instance v3, Lcom/parse/ˊﾞ;

    const/16 v4, 0xa

    invoke-direct {v3, v2, p1, v1, v4}, Lcom/parse/ˊﾞ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "setForegroundAsync"

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lʻʿ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˈי/ᵔᵢ;

    iget-object v1, p0, Lʻʿ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lᴵʾ/ᵔᵢ;

    sget-object v2, Lᴵי/ʽﹳ;->ᴵˊ:Lᴵי/ʽﹳ;

    invoke-interface {v0, v2}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v2

    check-cast v2, Lᴵי/ᴵˑ;

    new-instance v3, Lٴˉ/ⁱˊ;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v2}, Lٴˉ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    iget-object v2, p1, Lʽﹳ/ᵔᵢ;->ʽ:Lʽﹳ/ᵔʾ;

    if-eqz v2, :cond_2

    sget-object v4, Lᴵˋ/ٴﹶ;->ʾˋ:Lᴵˋ/ٴﹶ;

    invoke-virtual {v2, v3, v4}, Lʽﹳ/ᵎﹶ;->ﹳٴ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_2
    invoke-static {v0}, Lᴵי/ʾᵎ;->ⁱˊ(Lˈי/ᵔᵢ;)Lˊʽ/ˈ;

    move-result-object v0

    new-instance v2, Lʼˋ/ᵔʾ;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3}, Lʼˋ/ᵔʾ;-><init>(Lᴵⁱ/ʼᐧ;Lʽﹳ/ᵔᵢ;Lˈי/ˈ;)V

    const/4 p1, 0x1

    invoke-static {v0, v3, v2, p1}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ʽ()Ljava/lang/Object;
    .locals 7

    .prologue
    iget v0, p0, Lʻʿ/ʽ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʻʿ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾٴ/ⁱˊ;

    iget-object v1, p0, Lʻʿ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, v0, Lʾٴ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    check-cast v3, Lᵔـ/ʽ;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    check-cast v3, Lᵔـ/ᵔᵢ;

    sget-object v6, Lˆ/ʽ;->ٴᵢ:Lˆ/ʽ;

    invoke-virtual {v3, v4, v5, v6, v2}, Lᵔـ/ᵔᵢ;->ـˆ(JLˆ/ʽ;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lʻʿ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾٴ/ⁱˊ;

    iget-object v1, p0, Lʻʿ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    iget-object v0, v0, Lʾٴ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lᵔـ/ˈ;

    check-cast v0, Lᵔـ/ᵔᵢ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DELETE FROM events WHERE _id in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lᵔـ/ᵔᵢ;->ˈٴ(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lᵔـ/ᵔᵢ;->ʽ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    :goto_1
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public ˆʾ(Lʾﹳ/ⁱˊ;)V
    .locals 2

    iget-object v0, p0, Lʻʿ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾﹳ/ﹳٴ;

    iget-object v1, p0, Lʻʿ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lʾﹳ/ﹳٴ;

    invoke-interface {v0, p1}, Lʾﹳ/ﹳٴ;->ˆʾ(Lʾﹳ/ⁱˊ;)V

    invoke-interface {v1, p1}, Lʾﹳ/ﹳٴ;->ˆʾ(Lʾﹳ/ⁱˊ;)V

    return-void
.end method

.method public ˈ(Landroidx/leanback/widget/ʻٴ;)Ljava/lang/Object;
    .locals 4

    .prologue
    iget v0, p0, Lʻʿ/ʽ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʻʿ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lʻʿ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lʾˈ/ˏי;

    const-class v2, Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/ʻٴ;->ⁱˊ(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget v1, v1, Lʾˈ/ˏי;->ʾˋ:I

    packed-switch v1, :pswitch_data_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/firebase/FirebaseCommonRegistrar;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    goto :goto_0

    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.television"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "tv"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "watch"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.automotive"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, "auto"

    goto :goto_0

    :cond_3
    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "android.hardware.type.embedded"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "embedded"

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/google/firebase/FirebaseCommonRegistrar;->ﹳٴ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v1, Lﹳי/ﹳٴ;

    invoke-direct {v1, v0, p1}, Lﹳי/ﹳٴ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :pswitch_3
    iget-object v0, p0, Lʻʿ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lʻʿ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˏ/ⁱˊ;

    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lˏ/ⁱˊ;->ﾞᴵ:Lˏ/ˈ;

    invoke-interface {v0, p1}, Lˏ/ˈ;->ˈ(Landroidx/leanback/widget/ʻٴ;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ˑﹳ(Ljava/lang/Object;Lʽⁱ/ʼᐧ;)V
    .locals 3

    iget-object v0, p0, Lʻʿ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʻʿ/ˆʾ;

    iget-object v1, p0, Lʻʿ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lʽⁱ/ᵔٴ;

    check-cast p1, Lʻʿ/ⁱˊ;

    new-instance v2, Lﹶﾞ/ⁱי;

    iget-object v0, v0, Lʻʿ/ˆʾ;->ᴵᵔ:Landroid/util/SparseArray;

    invoke-direct {v2, p2, v0}, Lﹶﾞ/ⁱי;-><init>(Lʽⁱ/ʼᐧ;Landroid/util/SparseArray;)V

    check-cast p1, Lʻʿ/ʼᐧ;

    invoke-virtual {p1, v1, v2}, Lʻʿ/ʼᐧ;->ٴﹶ(Lʽⁱ/ᵔٴ;Lﹶﾞ/ⁱי;)V

    return-void
.end method

.method public ⁱˊ(Ljava/lang/Object;)V
    .locals 7

    .prologue
    iget-object v0, p0, Lʻʿ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʻʿ/ﹳٴ;

    iget-object v1, p0, Lʻʿ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˎʾ/ᵎﹶ;

    check-cast p1, Lʻʿ/ⁱˊ;

    check-cast p1, Lʻʿ/ʼᐧ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lʻʿ/ﹳٴ;->ˈ:Lﹳᵢ/ᵢˏ;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v4, v1, Lˎʾ/ᵎﹶ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v4, Lʽⁱ/ﹳᐧ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v1, Lˎʾ/ᵎﹶ;->ʽ:I

    iget-object v6, p1, Lʻʿ/ʼᐧ;->ʽ:Lʻʿ/ˉʿ;

    iget-object v0, v0, Lʻʿ/ﹳٴ;->ⁱˊ:Lʽⁱ/ʼˈ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v0, v2}, Lʻʿ/ˉʿ;->ˈ(Lʽⁱ/ʼˈ;Lﹳᵢ/ᵢˏ;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v3, v4, v5, v0, v2}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(Ljava/lang/Object;ILjava/lang/String;I)V

    iget v0, v1, Lˎʾ/ᵎﹶ;->ⁱˊ:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object v3, p1, Lʻʿ/ʼᐧ;->ﹳᐧ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    return-void

    :cond_2
    iput-object v3, p1, Lʻʿ/ʼᐧ;->ᵔﹳ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    return-void

    :cond_3
    iput-object v3, p1, Lʻʿ/ʼᐧ;->ʼᐧ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    return-void
.end method

.method public ﹳٴ(Lٴʻ/ﾞᴵ;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lʻʿ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹳʽ/ʽʽ;

    iget-object v1, p0, Lʻʿ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lﹳʽ/ˈٴ;

    iget-object p1, p1, Lٴʻ/ﾞᴵ;->ﹳٴ:Lﹳˋ/ʽʽ;

    invoke-interface {v1}, Lﹳʽ/ˈٴ;->ﹳٴ()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lﹳʽ/ʽʽ;->ﹳٴ(Lﹳˋ/ʽʽ;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
