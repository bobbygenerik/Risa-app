.class public final Lʽᴵ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public ʽʽ:I

.field public ʾˋ:Lʽᴵ/ʻٴ;

.field public final synthetic ˈٴ:Lʽᴵ/ـˆ;

.field public ᴵˊ:Lʽᴵ/ʻٴ;

.field public final synthetic ᴵᵔ:I


# direct methods
.method public constructor <init>(Lʽᴵ/ـˆ;I)V
    .locals 0

    iput p2, p0, Lʽᴵ/ˏי;->ᴵᵔ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽᴵ/ˏי;->ˈٴ:Lʽᴵ/ـˆ;

    iget-object p2, p1, Lʽᴵ/ـˆ;->ʽʽ:Lʽᴵ/ʻٴ;

    iget-object p2, p2, Lʽᴵ/ʻٴ;->ˈٴ:Lʽᴵ/ʻٴ;

    iput-object p2, p0, Lʽᴵ/ˏי;->ʾˋ:Lʽᴵ/ʻٴ;

    const/4 p2, 0x0

    iput-object p2, p0, Lʽᴵ/ˏי;->ᴵˊ:Lʽᴵ/ʻٴ;

    iget p1, p1, Lʽᴵ/ـˆ;->ᴵᵔ:I

    iput p1, p0, Lʽᴵ/ˏי;->ʽʽ:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lʽᴵ/ˏי;->ʾˋ:Lʽᴵ/ʻٴ;

    iget-object v1, p0, Lʽᴵ/ˏי;->ˈٴ:Lʽᴵ/ـˆ;

    iget-object v1, v1, Lʽᴵ/ـˆ;->ʽʽ:Lʽᴵ/ʻٴ;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lʽᴵ/ˏי;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lʽᴵ/ˏי;->ﹳٴ()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lʽᴵ/ˏי;->ⁱˊ()Lʽᴵ/ʻٴ;

    move-result-object v0

    iget-object v0, v0, Lʽᴵ/ʻٴ;->ˊʻ:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 3

    .prologue
    iget-object v0, p0, Lʽᴵ/ˏי;->ᴵˊ:Lʽᴵ/ʻٴ;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lʽᴵ/ˏי;->ˈٴ:Lʽᴵ/ـˆ;

    invoke-virtual {v2, v0, v1}, Lʽᴵ/ـˆ;->ʽ(Lʽᴵ/ʻٴ;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lʽᴵ/ˏי;->ᴵˊ:Lʽᴵ/ʻٴ;

    iget v0, v2, Lʽᴵ/ـˆ;->ᴵᵔ:I

    iput v0, p0, Lʽᴵ/ˏי;->ʽʽ:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final ⁱˊ()Lʽᴵ/ʻٴ;
    .locals 3

    .prologue
    iget-object v0, p0, Lʽᴵ/ˏי;->ʾˋ:Lʽᴵ/ʻٴ;

    iget-object v1, p0, Lʽᴵ/ˏי;->ˈٴ:Lʽᴵ/ـˆ;

    iget-object v2, v1, Lʽᴵ/ـˆ;->ʽʽ:Lʽᴵ/ʻٴ;

    if-eq v0, v2, :cond_1

    iget v1, v1, Lʽᴵ/ـˆ;->ᴵᵔ:I

    iget v2, p0, Lʽᴵ/ˏי;->ʽʽ:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lʽᴵ/ʻٴ;->ˈٴ:Lʽᴵ/ʻٴ;

    iput-object v1, p0, Lʽᴵ/ˏי;->ʾˋ:Lʽᴵ/ʻٴ;

    iput-object v0, p0, Lʽᴵ/ˏי;->ᴵˊ:Lʽᴵ/ʻٴ;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final ﹳٴ()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lʽᴵ/ˏי;->ⁱˊ()Lʽᴵ/ʻٴ;

    move-result-object v0

    return-object v0
.end method
