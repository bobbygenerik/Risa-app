.class public final Lˎᵢ/ᵢˏ;
.super Lˎᵢ/ʾˋ;
.source "SourceFile"


# instance fields
.field public final synthetic ⁱˊ:[B

.field public final synthetic ﹳٴ:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lˎᵢ/ᵢˏ;->ﹳٴ:I

    iput-object p2, p0, Lˎᵢ/ᵢˏ;->ⁱˊ:[B

    return-void
.end method


# virtual methods
.method public final ˈ(Lˊᐧ/ᵎﹶ;)V
    .locals 2

    iget-object v0, p0, Lˎᵢ/ᵢˏ;->ⁱˊ:[B

    iget v1, p0, Lˎᵢ/ᵢˏ;->ﹳٴ:I

    invoke-interface {p1, v1, v0}, Lˊᐧ/ᵎﹶ;->ʿ(I[B)Lˊᐧ/ᵎﹶ;

    return-void
.end method

.method public final ⁱˊ()Lˎᵢ/ﹳᐧ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ﹳٴ()J
    .locals 2

    iget v0, p0, Lˎᵢ/ᵢˏ;->ﹳٴ:I

    int-to-long v0, v0

    return-wide v0
.end method
