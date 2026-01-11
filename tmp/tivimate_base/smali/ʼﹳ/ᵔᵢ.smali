.class public final Lʼﹳ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:[B

.field public ⁱˊ:[B

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lʼﹳ/ᵔᵢ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʼﹳ/ᵔᵢ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼﹳ/ᵔᵢ;->ⁱˊ:[B

    iput-object p2, p0, Lʼﹳ/ᵔᵢ;->ʽ:[B

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    iget v0, p0, Lʼﹳ/ᵔᵢ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMB2FileId{persistentHandle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʼﹳ/ᵔᵢ;->ⁱˊ:[B

    invoke-static {v1}, Lᴵʿ/ﹳٴ;->ʽ([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ﹳٴ(Lˋʼ/ﹳٴ;)V
    .locals 2

    iget-object v0, p0, Lʼﹳ/ᵔᵢ;->ⁱˊ:[B

    array-length v1, v0

    invoke-virtual {p1, v1, v0}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    iget-object v0, p0, Lʼﹳ/ᵔᵢ;->ʽ:[B

    array-length v1, v0

    invoke-virtual {p1, v1, v0}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    return-void
.end method
