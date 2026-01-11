.class public final synthetic Lˆﹶ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic ⁱˊ:I

.field public final synthetic ﹳٴ:Landroidx/leanback/widget/ˉˆ;


# direct methods
.method public synthetic constructor <init>(Landroidx/leanback/widget/ˉˆ;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˆﹶ/ˈ;->ﹳٴ:Landroidx/leanback/widget/ˉˆ;

    iput p2, p0, Lˆﹶ/ˈ;->ⁱˊ:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    .prologue
    iget-object v0, p0, Lˆﹶ/ˈ;->ﹳٴ:Landroidx/leanback/widget/ˉˆ;

    iget-object v0, v0, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->ˏי()Lˑᵎ/ᵎﹶ;

    move-result-object v1

    const-string v2, "next_job_scheduler_id"

    invoke-virtual {v1, v2}, Lˑᵎ/ᵎﹶ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-int v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const v4, 0x7fffffff

    if-ne v1, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v1, 0x1

    :goto_1
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->ˏי()Lˑᵎ/ᵎﹶ;

    move-result-object v5

    new-instance v6, Lˑᵎ/ﾞᴵ;

    int-to-long v7, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v6, v2, v4}, Lˑᵎ/ﾞᴵ;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, v5, Lˑᵎ/ᵎﹶ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v7, Lˑᵎ/ⁱˊ;

    const/4 v8, 0x1

    invoke-direct {v7, v5, v8, v6}, Lˑᵎ/ⁱˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v5, 0x1

    invoke-static {v4, v3, v5, v7}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    if-ltz v1, :cond_2

    iget v4, p0, Lˆﹶ/ˈ;->ⁱˊ:I

    if-gt v1, v4, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->ˏי()Lˑᵎ/ᵎﹶ;

    move-result-object v0

    new-instance v1, Lˑᵎ/ﾞᴵ;

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lˑᵎ/ﾞᴵ;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, v0, Lˑᵎ/ᵎﹶ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v4, Lˑᵎ/ⁱˊ;

    const/4 v6, 0x1

    invoke-direct {v4, v0, v6, v1}, Lˑᵎ/ⁱˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v2, v3, v5, v4}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
