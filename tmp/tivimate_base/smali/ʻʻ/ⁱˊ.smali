.class public final synthetic Lʻʻ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final synthetic ˈٴ:Ljava/lang/Object;

.field public final synthetic ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lʻʻ/ⁱˊ;->ʾˋ:I

    iput-object p1, p0, Lʻʻ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    iput p2, p0, Lʻʻ/ⁱˊ;->ᴵˊ:I

    iput-object p3, p0, Lʻʻ/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    iput p4, p0, Lʻʻ/ⁱˊ;->ʾˋ:I

    iput-object p1, p0, Lʻʻ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    iput-object p2, p0, Lʻʻ/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    iput p3, p0, Lʻʻ/ⁱˊ;->ᴵˊ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    iget v0, p0, Lʻʻ/ⁱˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʻʻ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lⁱᴵ/ʼˎ;

    iget v1, v0, Lⁱᴵ/ʼˎ;->ﹳٴ:I

    iget-object v0, v0, Lⁱᴵ/ʼˎ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget-object v2, p0, Lʻʻ/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    iget v3, p0, Lʻʻ/ⁱˊ;->ᴵˊ:I

    invoke-interface {v2, v1, v0, v3}, Lⁱᴵ/ˆʾ;->ʽ(ILﹳᵢ/ᵢˏ;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lʻʻ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lⁱי/ـˏ;

    iget-object v1, p0, Lʻʻ/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v0, v0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iget-object v0, v0, Lˋⁱ/ʼᐧ;->ʼˎ:Ljava/lang/Object;

    check-cast v0, Lʻʿ/ˆʾ;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lﹳᵢ/ᵢˏ;

    iget v3, p0, Lʻʻ/ⁱˊ;->ᴵˊ:I

    invoke-virtual {v0, v2, v1, v3}, Lʻʿ/ˆʾ;->ʽ(ILﹳᵢ/ᵢˏ;I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lʻʻ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lʻʻ/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lᐧˎ/ˆʾ;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lᐧˎ/ﾞʻ;

    iget-boolean v3, v2, Lᐧˎ/ﾞʻ;->ˈ:Z

    if-nez v3, :cond_0

    const/4 v3, -0x1

    iget v4, p0, Lʻʻ/ⁱˊ;->ᴵˊ:I

    if-eq v4, v3, :cond_1

    iget-object v3, v2, Lᐧˎ/ﾞʻ;->ⁱˊ:Lar/tvplayer/core/domain/ʽﹳ;

    invoke-virtual {v3, v4}, Lar/tvplayer/core/domain/ʽﹳ;->ⁱˊ(I)V

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v2, Lᐧˎ/ﾞʻ;->ʽ:Z

    iget-object v2, v2, Lᐧˎ/ﾞʻ;->ﹳٴ:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lᐧˎ/ˆʾ;->ⁱˊ(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void

    :pswitch_2
    iget-object v0, p0, Lʻʻ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʻʻ/ʽ;

    iget-object v0, v0, Lʻʻ/ʽ;->ˈ:Ljava/lang/Object;

    check-cast v0, Lʻʻ/ˈ;

    iget v1, p0, Lʻʻ/ⁱˊ;->ᴵˊ:I

    iget-object v2, p0, Lʻʻ/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lʻʻ/ˈ;->ˏי(ILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
