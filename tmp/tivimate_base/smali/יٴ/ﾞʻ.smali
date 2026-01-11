.class public final Lיٴ/ﾞʻ;
.super Lיٴ/ˉʿ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 1

    .prologue
    iput p1, p0, Lיٴ/ﾞʻ;->ʽ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    invoke-static {p1}, Lʼﾞ/ˊˋ;->ˈ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lיٴ/ˉʿ;->ˆʾ(I[B)Landroidx/datastore/preferences/protobuf/ˆʾ;

    move-result-object p1

    iput-object p1, p0, Lיٴ/ˉʿ;->ﹳٴ:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lיٴ/ˉʿ;->ˆʾ(I[B)Landroidx/datastore/preferences/protobuf/ˆʾ;

    move-result-object p1

    iput-object p1, p0, Lיٴ/ˉʿ;->ⁱˊ:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use ChaCha20Poly1305 in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ˆʾ(I[B)Landroidx/datastore/preferences/protobuf/ˆʾ;
    .locals 2

    .prologue
    iget v0, p0, Lיٴ/ﾞʻ;->ʽ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lיٴ/ٴﹶ;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p1, v1}, Lיٴ/ٴﹶ;-><init>([BII)V

    return-object v0

    :pswitch_0
    new-instance v0, Lיٴ/ٴﹶ;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lיٴ/ٴﹶ;-><init>([BII)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
