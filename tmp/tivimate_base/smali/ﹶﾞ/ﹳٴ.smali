.class public final Lﹶﾞ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:J

.field public final synthetic ʾˋ:I

.field public final synthetic ˈٴ:Lﹶﾞ/ʾᵎ;

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lﹶﾞ/ـˆ;Ljava/lang/String;JI)V
    .locals 0

    iput p5, p0, Lﹶﾞ/ﹳٴ;->ʾˋ:I

    iput-object p2, p0, Lﹶﾞ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    iput-wide p3, p0, Lﹶﾞ/ﹳٴ;->ʽʽ:J

    iput-object p1, p0, Lﹶﾞ/ﹳٴ;->ˈٴ:Lﹶﾞ/ʾᵎ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ﾞˏ;Lﹶﾞ/ﹶʽ;J)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lﹶﾞ/ﹳٴ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lﹶﾞ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    iput-wide p3, p0, Lﹶﾞ/ﹳٴ;->ʽʽ:J

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ﹳٴ;->ˈٴ:Lﹶﾞ/ʾᵎ;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    iget v0, p0, Lﹶﾞ/ﹳٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹶﾞ/ﹳٴ;->ˈٴ:Lﹶﾞ/ʾᵎ;

    check-cast v0, Lﹶﾞ/ﾞˏ;

    iget-object v1, p0, Lﹶﾞ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ﹶʽ;

    iget-wide v2, p0, Lﹶﾞ/ﹳٴ;->ʽʽ:J

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lﹶﾞ/ﾞˏ;->ʼᵢ(Lﹶﾞ/ﹶʽ;ZJ)V

    const/4 v1, 0x0

    iput-object v1, v0, Lﹶﾞ/ﾞˏ;->ᴵᵔ:Lﹶﾞ/ﹶʽ;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v0}, Lﹶﾞ/ᵎʻ;->ﾞʻ()Lﹶﾞ/ʿʽ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ٴᵢ;->ﹶˎ()V

    new-instance v2, Lﹶﾞ/ﹶˎ;

    invoke-direct {v2, v0, v1}, Lﹶﾞ/ﹶˎ;-><init>(Lﹶﾞ/ʿʽ;Lﹶﾞ/ﹶʽ;)V

    invoke-virtual {v0, v2}, Lﹶﾞ/ʿʽ;->ﹶʽ(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lﹶﾞ/ﹳٴ;->ˈٴ:Lﹶﾞ/ʾᵎ;

    check-cast v0, Lﹶﾞ/ـˆ;

    iget-object v1, p0, Lﹶﾞ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    invoke-static {v1}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iget-object v3, v0, Lﹶﾞ/ـˆ;->ʽʽ:Lיـ/ˑﹳ;

    invoke-virtual {v3, v1}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    iget-object v5, v2, Lﹶﾞ/ᵎʻ;->ᵔי:Lﹶﾞ/ﾞˏ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v5}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lﹶﾞ/ﾞˏ;->ﾞˋ(Z)Lﹶﾞ/ﹶʽ;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_2

    invoke-virtual {v3, v1}, Lיـ/ﹳᐧ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lﹶﾞ/ـˆ;->ᴵˊ:Lיـ/ˑﹳ;

    invoke-virtual {v4, v1}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    iget-wide v7, p0, Lﹶﾞ/ﹳٴ;->ʽʽ:J

    if-nez v6, :cond_0

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v1, v2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v4, "First ad unit exposure time was never set"

    invoke-virtual {v1, v4}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v9, v7, v9

    invoke-virtual {v4, v1}, Lיـ/ﹳᐧ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1, v9, v10, v5}, Lﹶﾞ/ـˆ;->יˉ(Ljava/lang/String;JLﹶﾞ/ﹶʽ;)V

    :goto_0
    invoke-virtual {v3}, Lיـ/ﹳᐧ;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v3, v0, Lﹶﾞ/ـˆ;->ˈٴ:J

    const-wide/16 v9, 0x0

    cmp-long v1, v3, v9

    if-nez v1, :cond_1

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v1, "First ad exposure time was never set"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sub-long/2addr v7, v3

    invoke-virtual {v0, v7, v8, v5}, Lﹶﾞ/ـˆ;->ʼᵢ(JLﹶﾞ/ﹶʽ;)V

    iput-wide v9, v0, Lﹶﾞ/ـˆ;->ˈٴ:J

    goto :goto_1

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v0, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v2, "Call to endAdUnitExposure for unknown ad unit id"

    invoke-virtual {v0, v1, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lﹶﾞ/ﹳٴ;->ˈٴ:Lﹶﾞ/ʾᵎ;

    check-cast v0, Lﹶﾞ/ـˆ;

    iget-object v1, p0, Lﹶﾞ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    invoke-static {v1}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iget-object v2, v0, Lﹶﾞ/ـˆ;->ʽʽ:Lיـ/ˑﹳ;

    invoke-virtual {v2}, Lיـ/ﹳᐧ;->isEmpty()Z

    move-result v3

    iget-wide v4, p0, Lﹶﾞ/ﹳٴ;->ʽʽ:J

    if-eqz v3, :cond_5

    iput-wide v4, v0, Lﹶﾞ/ـˆ;->ˈٴ:J

    :cond_5
    invoke-virtual {v2, v1}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v6, 0x1

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iget v3, v2, Lיـ/ﹳᐧ;->ʽʽ:I

    const/16 v7, 0x64

    if-lt v3, v7, :cond_7

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v1, "Too many ads visible"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lﹶﾞ/ـˆ;->ᴵˊ:Lיـ/ˑﹳ;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
