.class public final synthetic Lᵔـ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵔـ/ﾞᴵ;


# instance fields
.field public final synthetic ʾˋ:J

.field public final synthetic ᴵˊ:Lˉˋ/ʼˎ;


# direct methods
.method public synthetic constructor <init>(JLˉˋ/ʼˎ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lᵔـ/ˑﹳ;->ʾˋ:J

    iput-object p3, p0, Lᵔـ/ˑﹳ;->ᴵˊ:Lˉˋ/ʼˎ;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "next_request_ms"

    iget-wide v2, p0, Lᵔـ/ˑﹳ;->ʾˋ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lᵔـ/ˑﹳ;->ᴵˊ:Lˉˋ/ʼˎ;

    iget-object v2, v1, Lˉˋ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, v1, Lˉˋ/ʼˎ;->ʽ:Lᴵˆ/ʽ;

    invoke-static {v3}, Lᐧ/ﹳٴ;->ﹳٴ(Lᴵˆ/ʽ;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "transport_contexts"

    const-string v5, "backend_name = ? and priority = ?"

    invoke-virtual {p1, v4, v0, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v2, v5, :cond_0

    const-string v2, "backend_name"

    iget-object v1, v1, Lˉˋ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lᐧ/ﹳٴ;->ﹳٴ(Lᴵˆ/ʽ;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "priority"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1, v4, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    return-object v6
.end method
