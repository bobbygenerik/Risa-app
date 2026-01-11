.class public final Lﹶﾞ/ﹶʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:J

.field public ˈ:Z

.field public final ˑﹳ:Z

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Ljava/lang/String;

.field public final ﾞᴵ:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v3, p1

    move-object v1, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lﹶﾞ/ﹶʽ;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ﹶʽ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lﹶﾞ/ﹶʽ;->ⁱˊ:Ljava/lang/String;

    iput-wide p3, p0, Lﹶﾞ/ﹶʽ;->ʽ:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lﹶﾞ/ﹶʽ;->ˈ:Z

    iput-boolean p5, p0, Lﹶﾞ/ﹶʽ;->ˑﹳ:Z

    iput-wide p6, p0, Lﹶﾞ/ﹶʽ;->ﾞᴵ:J

    return-void
.end method
