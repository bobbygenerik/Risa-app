.class public final Lٴٴ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:J

.field public final ˈ:Ljava/util/UUID;

.field public final ˑﹳ:Ljava/util/Date;

.field public final ⁱˊ:Lʽⁱ/ᵎﹶ;

.field public final ﹳٴ:Lˋٴ/ʽ;

.field public ﾞᴵ:J


# direct methods
.method public constructor <init>(Lʽⁱ/ᵎﹶ;JLjava/util/UUID;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴٴ/ʽ;->ⁱˊ:Lʽⁱ/ᵎﹶ;

    iput-wide p2, p0, Lٴٴ/ʽ;->ʽ:J

    iput-object p4, p0, Lٴٴ/ʽ;->ˈ:Ljava/util/UUID;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lٴٴ/ʽ;->ˑﹳ:Ljava/util/Date;

    new-instance p1, Lˋٴ/ʽ;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/hierynomus/smbj/common/SMBRuntimeException;->ʾˋ:Lˋⁱ/ﾞᴵ;

    invoke-direct {p1, p2}, Lˋٴ/ʽ;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lٴٴ/ʽ;->ﹳٴ:Lˋٴ/ʽ;

    return-void
.end method
