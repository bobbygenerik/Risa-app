.class public final Lⁱˏ/ˈ;
.super Lˈˏ/ʽ;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lⁱʿ/ﹳٴ;


# instance fields
.field public final synthetic ᴵᵔ:I


# direct methods
.method public constructor <init>(Lⁱˏ/ﾞᴵ;I)V
    .locals 0

    iput p2, p0, Lⁱˏ/ˈ;->ᴵᵔ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˈˏ/ʽ;->ˈٴ:Ljava/lang/Object;

    const/4 p2, -0x1

    iput p2, p0, Lˈˏ/ʽ;->ᴵˊ:I

    iget p1, p1, Lⁱˏ/ﾞᴵ;->ˉٴ:I

    iput p1, p0, Lˈˏ/ʽ;->ʽʽ:I

    invoke-virtual {p0}, Lˈˏ/ʽ;->ˑﹳ()V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lⁱˏ/ˈ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lˈˏ/ʽ;->ⁱˊ()V

    iget v0, p0, Lˈˏ/ʽ;->ʾˋ:I

    iget-object v1, p0, Lˈˏ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lⁱˏ/ﾞᴵ;

    iget v2, v1, Lⁱˏ/ﾞᴵ;->ˊʻ:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lˈˏ/ʽ;->ʾˋ:I

    iput v0, p0, Lˈˏ/ʽ;->ᴵˊ:I

    iget-object v1, v1, Lⁱˏ/ﾞᴵ;->ᴵˊ:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-virtual {p0}, Lˈˏ/ʽ;->ˑﹳ()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lˈˏ/ʽ;->ⁱˊ()V

    iget v0, p0, Lˈˏ/ʽ;->ʾˋ:I

    iget-object v1, p0, Lˈˏ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lⁱˏ/ﾞᴵ;

    iget v2, v1, Lⁱˏ/ﾞᴵ;->ˊʻ:I

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lˈˏ/ʽ;->ʾˋ:I

    iput v0, p0, Lˈˏ/ʽ;->ᴵˊ:I

    iget-object v1, v1, Lⁱˏ/ﾞᴵ;->ʾˋ:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-virtual {p0}, Lˈˏ/ʽ;->ˑﹳ()V

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_1
    invoke-virtual {p0}, Lˈˏ/ʽ;->ⁱˊ()V

    iget v0, p0, Lˈˏ/ʽ;->ʾˋ:I

    iget-object v1, p0, Lˈˏ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lⁱˏ/ﾞᴵ;

    iget v2, v1, Lⁱˏ/ﾞᴵ;->ˊʻ:I

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lˈˏ/ʽ;->ʾˋ:I

    iput v0, p0, Lˈˏ/ʽ;->ᴵˊ:I

    new-instance v2, Lⁱˏ/ˑﹳ;

    invoke-direct {v2, v1, v0}, Lⁱˏ/ˑﹳ;-><init>(Lⁱˏ/ﾞᴵ;I)V

    invoke-virtual {p0}, Lˈˏ/ʽ;->ˑﹳ()V

    return-object v2

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
