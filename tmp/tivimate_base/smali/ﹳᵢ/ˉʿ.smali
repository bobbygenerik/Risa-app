.class public final synthetic Lﹳᵢ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˆʽ/ٴﹶ;


# instance fields
.field public final synthetic ʽʽ:Lـˊ/ˑﹳ;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lˑʼ/ᵎˊ;I)V
    .locals 0

    iput p3, p0, Lﹳᵢ/ˉʿ;->ʾˋ:I

    iput-object p1, p0, Lﹳᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, p0, Lﹳᵢ/ˉʿ;->ʽʽ:Lـˊ/ˑﹳ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lﹳᵢ/ˉʿ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹳᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʻʻ/ʽ;

    new-instance v1, Lﹳᵢ/ˊˋ;

    iget-object v0, v0, Lʻʻ/ʽ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lˊﾞ/ˉʿ;

    iget-object v2, p0, Lﹳᵢ/ˉʿ;->ʽʽ:Lـˊ/ˑﹳ;

    invoke-direct {v1, v2, v0}, Lﹳᵢ/ˊˋ;-><init>(Lـˊ/ˑﹳ;Lˊﾞ/ˉʿ;)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, Lﹳᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p0, Lﹳᵢ/ˉʿ;->ʽʽ:Lـˊ/ˑﹳ;

    invoke-static {v0, v1}, Lﹳᵢ/ᵔʾ;->ᵎﹶ(Ljava/lang/Class;Lـˊ/ˑﹳ;)Lﹳᵢ/ʼʼ;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lﹳᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p0, Lﹳᵢ/ˉʿ;->ʽʽ:Lـˊ/ˑﹳ;

    invoke-static {v0, v1}, Lﹳᵢ/ᵔʾ;->ᵎﹶ(Ljava/lang/Class;Lـˊ/ˑﹳ;)Lﹳᵢ/ʼʼ;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lﹳᵢ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p0, Lﹳᵢ/ˉʿ;->ʽʽ:Lـˊ/ˑﹳ;

    invoke-static {v0, v1}, Lﹳᵢ/ᵔʾ;->ᵎﹶ(Ljava/lang/Class;Lـˊ/ˑﹳ;)Lﹳᵢ/ʼʼ;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
