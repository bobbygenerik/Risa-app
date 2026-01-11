.class public final Lיـ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lⁱʿ/ﹳٴ;


# instance fields
.field public ʽʽ:Z

.field public ʾˋ:I

.field public final synthetic ˈٴ:I

.field public ᴵˊ:I

.field public final synthetic ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lיـ/ﹳٴ;->ʾˋ:I

    return-void
.end method

.method public constructor <init>(Lיـ/ˑﹳ;I)V
    .locals 0

    .prologue
    iput p2, p0, Lיـ/ﹳٴ;->ˈٴ:I

    packed-switch p2, :pswitch_data_0

    iput-object p1, p0, Lיـ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    iget p1, p1, Lיـ/ﹳᐧ;->ʽʽ:I

    invoke-direct {p0, p1}, Lיـ/ﹳٴ;-><init>(I)V

    return-void

    :pswitch_0
    iput-object p1, p0, Lיـ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    iget p1, p1, Lיـ/ﹳᐧ;->ʽʽ:I

    invoke-direct {p0, p1}, Lיـ/ﹳٴ;-><init>(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lיـ/ﾞᴵ;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lיـ/ﹳٴ;->ˈٴ:I

    iput-object p1, p0, Lיـ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    iget p1, p1, Lיـ/ﾞᴵ;->ʽʽ:I

    invoke-direct {p0, p1}, Lיـ/ﹳٴ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    iget v0, p0, Lיـ/ﹳٴ;->ᴵˊ:I

    iget v1, p0, Lיـ/ﹳٴ;->ʾˋ:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .prologue
    invoke-virtual {p0}, Lיـ/ﹳٴ;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lיـ/ﹳٴ;->ᴵˊ:I

    iget v1, p0, Lיـ/ﹳٴ;->ˈٴ:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lיـ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lיـ/ﾞᴵ;

    iget-object v1, v1, Lיـ/ﾞᴵ;->ᴵˊ:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lיـ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lיـ/ˑﹳ;

    invoke-virtual {v1, v0}, Lיـ/ﹳᐧ;->ˆʾ(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lיـ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lיـ/ˑﹳ;

    invoke-virtual {v1, v0}, Lיـ/ﹳᐧ;->ﾞᴵ(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iget v1, p0, Lיـ/ﹳٴ;->ᴵˊ:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lיـ/ﹳٴ;->ᴵˊ:I

    iput-boolean v2, p0, Lיـ/ﹳٴ;->ʽʽ:Z

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lיـ/ﹳٴ;->ʽʽ:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lיـ/ﹳٴ;->ᴵˊ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lיـ/ﹳٴ;->ᴵˊ:I

    iget v1, p0, Lיـ/ﹳٴ;->ˈٴ:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lיـ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lיـ/ﾞᴵ;

    invoke-virtual {v1, v0}, Lיـ/ﾞᴵ;->ﹳٴ(I)Ljava/lang/Object;

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lיـ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lיـ/ˑﹳ;

    invoke-virtual {v1, v0}, Lיـ/ﹳᐧ;->ᵔᵢ(I)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lיـ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lיـ/ˑﹳ;

    invoke-virtual {v1, v0}, Lיـ/ﹳᐧ;->ᵔᵢ(I)Ljava/lang/Object;

    :goto_0
    iget v0, p0, Lיـ/ﹳٴ;->ʾˋ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lיـ/ﹳٴ;->ʾˋ:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lיـ/ﹳٴ;->ʽʽ:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() before removing an element."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
