.class public final Lʽ/ᵔʾ;
.super Lˊʼ/ٴﹶ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳٴ;


# instance fields
.field public final synthetic ʽʽ:Lʽ/ʽﹳ;

.field public final synthetic ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(Lʽ/ʽﹳ;I)V
    .locals 0

    iput p2, p0, Lʽ/ᵔʾ;->ᴵˊ:I

    iput-object p1, p0, Lʽ/ᵔʾ;->ʽʽ:Lʽ/ʽﹳ;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lˊʼ/ٴﹶ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 5

    .prologue
    iget v0, p0, Lʽ/ᵔʾ;->ᴵˊ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʽ/ᵔʾ;->ʽʽ:Lʽ/ʽﹳ;

    invoke-virtual {v0}, Lʽ/ʽﹳ;->ﹳٴ()V

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lʽ/ᵔʾ;->ʽʽ:Lʽ/ʽﹳ;

    iget-object v1, v0, Lʽ/ʽﹳ;->ʽ:Lˑʼ/ᵔٴ;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, v0, Lʽ/ʽﹳ;->ⁱˊ:Lﹶˈ/ᵔᵢ;

    invoke-virtual {v1}, Lﹶˈ/ˑﹳ;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lˑʼ/ᵔٴ;

    iget-boolean v4, v4, Lˑʼ/ᵔٴ;->ﹳٴ:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    move-object v1, v3

    check-cast v1, Lˑʼ/ᵔٴ;

    :cond_2
    iput-object v2, v0, Lʽ/ʽﹳ;->ʽ:Lˑʼ/ᵔٴ;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lˑʼ/ᵔٴ;->ﹳٴ()V

    :cond_3
    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lʽ/ᵔʾ;->ʽʽ:Lʽ/ʽﹳ;

    invoke-virtual {v0}, Lʽ/ʽﹳ;->ﹳٴ()V

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
