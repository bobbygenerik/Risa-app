.class public final Lᴵʼ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᴵʼ/ˑﹳ;->ﹳٴ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lᴵʼ/ˑﹳ;

    if-eqz v0, :cond_0

    check-cast p1, Lᴵʼ/ˑﹳ;

    iget-object p1, p1, Lᴵʼ/ˑﹳ;->ﹳٴ:Ljava/lang/String;

    iget-object v0, p0, Lᴵʼ/ˑﹳ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v0, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lᴵʼ/ˑﹳ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lᴵʼ/ˑﹳ;->ﹳٴ:Ljava/lang/String;

    return-object v0
.end method
