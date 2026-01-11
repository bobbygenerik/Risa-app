.class public final Lʼٴ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Ljava/lang/String;

.field public ⁱˊ:I

.field public ﹳٴ:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼٴ/ˑﹳ;->ʽ:Ljava/lang/String;

    iput p2, p0, Lʼٴ/ˑﹳ;->ⁱˊ:I

    iput p3, p0, Lʼٴ/ˑﹳ;->ﹳٴ:I

    return-void
.end method


# virtual methods
.method public ﹳٴ()Lʼٴ/ﾞᴵ;
    .locals 2

    new-instance v0, Lʼٴ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget v1, p0, Lʼٴ/ˑﹳ;->ﹳٴ:I

    iput v1, v0, Lʼٴ/ﾞᴵ;->ﹳٴ:I

    iget v1, p0, Lʼٴ/ˑﹳ;->ⁱˊ:I

    iput v1, v0, Lʼٴ/ﾞᴵ;->ⁱˊ:I

    iget-object v1, p0, Lʼٴ/ˑﹳ;->ʽ:Ljava/lang/String;

    iput-object v1, v0, Lʼٴ/ﾞᴵ;->ʽ:Ljava/lang/String;

    return-object v0
.end method
