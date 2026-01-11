.class public final Lـᵢ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final ʽʽ:Lʻʼ/ⁱˊ;

.field public final ʾˋ:Lᵔⁱ/ˑﹳ;

.field public final ˈٴ:Landroid/os/Handler;

.field public ˉٴ:Z

.field public ˊʻ:Lٴᴵ/ʽ;

.field public ٴᵢ:Z

.field public final ᴵˊ:Lـᵢ/ﾞᴵ;

.field public final ᴵᵔ:Ljava/util/TreeMap;

.field public ᵎⁱ:Z


# direct methods
.method public constructor <init>(Lٴᴵ/ʽ;Lـᵢ/ﾞᴵ;Lᵔⁱ/ˑﹳ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lـᵢ/ˉˆ;->ˊʻ:Lٴᴵ/ʽ;

    iput-object p2, p0, Lـᵢ/ˉˆ;->ᴵˊ:Lـᵢ/ﾞᴵ;

    iput-object p3, p0, Lـᵢ/ˉˆ;->ʾˋ:Lᵔⁱ/ˑﹳ;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lـᵢ/ˉˆ;->ᴵᵔ:Ljava/util/TreeMap;

    invoke-static {p0}, Lᐧˎ/ʼʼ;->ʼᐧ(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lـᵢ/ˉˆ;->ˈٴ:Landroid/os/Handler;

    new-instance p1, Lʻʼ/ⁱˊ;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lʻʼ/ⁱˊ;-><init>(I)V

    iput-object p1, p0, Lـᵢ/ˉˆ;->ʽʽ:Lʻʼ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    .prologue
    iget-boolean v0, p0, Lـᵢ/ˉˆ;->ᵎⁱ:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lـᵢ/ˉʿ;

    iget-wide v2, p1, Lـᵢ/ˉʿ;->ﹳٴ:J

    iget-wide v4, p1, Lـᵢ/ˉʿ;->ⁱˊ:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Lـᵢ/ˉˆ;->ᴵᵔ:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long p1, v6, v2

    if-lez p1, :cond_3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return v1
.end method
