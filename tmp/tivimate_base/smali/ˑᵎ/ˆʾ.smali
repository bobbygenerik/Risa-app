.class public final synthetic Lˑᵎ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﾞʻ;


# instance fields
.field public final synthetic ʽʽ:I

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;)V
    .locals 0

    iput p2, p0, Lˑᵎ/ˆʾ;->ʾˋ:I

    iput-object p3, p0, Lˑᵎ/ˆʾ;->ᴵˊ:Ljava/lang/String;

    iput p1, p0, Lˑᵎ/ˆʾ;->ʽʽ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lˑᵎ/ˆʾ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lˑᵎ/ˆʾ;->ʽʽ:I

    iput-object p2, p0, Lˑᵎ/ˆʾ;->ᴵˊ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    iget v0, p0, Lˑᵎ/ˆʾ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lˑᵎ/ˆʾ;->ʽʽ:I

    iget-object v1, p0, Lˑᵎ/ˆʾ;->ᴵˊ:Ljava/lang/String;

    check-cast p1, Lﹳᴵ/ﹳٴ;

    const-string v2, "UPDATE workspec SET stop_reason=? WHERE id=?"

    invoke-interface {p1, v2}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object p1

    const/4 v2, 0x1

    int-to-long v3, v0

    :try_start_0
    invoke-interface {p1, v2, v3, v4}, Lﹳᴵ/ʽ;->ﾞᴵ(IJ)V

    const/4 v0, 0x2

    invoke-interface {p1, v0, v1}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    invoke-interface {p1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lˑᵎ/ˆʾ;->ᴵˊ:Ljava/lang/String;

    iget v1, p0, Lˑᵎ/ˆʾ;->ʽʽ:I

    check-cast p1, Lﹳᴵ/ﹳٴ;

    const-string v2, "UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)"

    invoke-interface {p1, v2}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object p1

    const/4 v2, 0x1

    :try_start_1
    invoke-interface {p1, v2, v0}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    const/4 v0, 0x2

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lﹳᴵ/ʽ;->ﾞᴵ(IJ)V

    invoke-interface {p1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lˑᵎ/ˆʾ;->ᴵˊ:Ljava/lang/String;

    iget v1, p0, Lˑᵎ/ˆʾ;->ʽʽ:I

    check-cast p1, Lﹳᴵ/ﹳٴ;

    const-string v2, "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?"

    invoke-interface {p1, v2}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object p1

    const/4 v2, 0x1

    :try_start_2
    invoke-interface {p1, v2, v0}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    const/4 v0, 0x2

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lﹳᴵ/ʽ;->ﾞᴵ(IJ)V

    const-string v0, "work_spec_id"

    invoke-static {p1, v0}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v0

    const-string v1, "generation"

    invoke-static {p1, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    const-string v2, "system_id"

    invoke-static {p1, v2}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v0}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v1, v3

    invoke-interface {p1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    new-instance v3, Lˑᵎ/ʼˎ;

    invoke-direct {v3, v1, v2, v0}, Lˑᵎ/ʼˎ;-><init>(IILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    return-object v3

    :goto_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
