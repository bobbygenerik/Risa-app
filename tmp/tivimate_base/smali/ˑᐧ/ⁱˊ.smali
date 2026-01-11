.class public final Lˑᐧ/ⁱˊ;
.super Lˑᐧ/ʽ;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .locals 1

    sget-object v0, Lˎᵔ/ﾞᴵ;->ᵔᵢ:Lˎᵔ/ˑﹳ;

    invoke-direct {p0, v0, p1}, Lˑᐧ/ʽ;-><init>(Lˎᵔ/ﾞᴵ;[B)V

    return-void
.end method


# virtual methods
.method public final ⁱˊ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lˑᐧ/ʽ;->ᴵˊ:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lˑᐧ/ʽ;->ᴵˊ:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method
