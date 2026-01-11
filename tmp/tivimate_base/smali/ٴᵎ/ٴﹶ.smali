.class public final Lٴᵎ/ٴﹶ;
.super Lﾞʿ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public final synthetic ˑﹳ:Lٴᵎ/ـˆ;

.field public final synthetic ﾞᴵ:Lـᵢ/ˆʾ;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lٴᵎ/ـˆ;Lـᵢ/ˆʾ;)V
    .locals 0

    iput-object p2, p0, Lٴᵎ/ٴﹶ;->ˑﹳ:Lٴᵎ/ـˆ;

    iput-object p3, p0, Lٴᵎ/ٴﹶ;->ﾞᴵ:Lـᵢ/ˆʾ;

    invoke-direct {p0, p1}, Lﾞʿ/ﹳٴ;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ﹳٴ()J
    .locals 4

    .prologue
    iget-object v0, p0, Lٴᵎ/ٴﹶ;->ˑﹳ:Lٴᵎ/ـˆ;

    :try_start_0
    invoke-interface {v0}, Lٴᵎ/ـˆ;->ᵎﹶ()Lٴᵎ/ʻٴ;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Lٴᵎ/ʻٴ;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v1, v3}, Lٴᵎ/ʻٴ;-><init>(Lٴᵎ/ـˆ;Ljava/lang/Throwable;I)V

    move-object v1, v2

    :goto_0
    iget-object v2, p0, Lٴᵎ/ٴﹶ;->ﾞᴵ:Lـᵢ/ˆʾ;

    iget-object v3, v2, Lـᵢ/ˆʾ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
