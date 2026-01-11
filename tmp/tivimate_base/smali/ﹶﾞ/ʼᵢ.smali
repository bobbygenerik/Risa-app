.class public final synthetic Lﹶﾞ/ʼᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʾˋ:Lﹶﾞ/ˈـ;

.field public final synthetic ᴵˊ:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lﹶﾞ/ˈـ;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ʼᵢ;->ʾˋ:Lﹶﾞ/ˈـ;

    iput-object p2, p0, Lﹶﾞ/ʼᵢ;->ᴵˊ:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    iget-object v0, p0, Lﹶﾞ/ʼᵢ;->ʾˋ:Lﹶﾞ/ˈـ;

    invoke-virtual {v0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v1}, Lﹶﾞ/ᐧᴵ;->ﾞˋ()Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lﹶﾞ/ʼᵢ;->ᴵˊ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lﹶﾞ/ˎʼ;

    iget v4, v3, Lﹶﾞ/ˎʼ;->ʽʽ:I

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v3, Lﹶﾞ/ˎʼ;->ᴵˊ:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    :cond_2
    invoke-virtual {v0}, Lﹶﾞ/ˈـ;->ˆˑ()Ljava/util/PriorityQueue;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lﹶﾞ/ˈـ;->ˎـ()V

    return-void
.end method
