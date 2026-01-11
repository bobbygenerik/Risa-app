.class public final Lʿˎ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lcom/parse/ʼᐧ;


# instance fields
.field public final ⁱˊ:I

.field public final ﹳٴ:Lʿˎ/ﾞᴵ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/parse/ʼᐧ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/parse/ʼᐧ;-><init>(I)V

    sput-object v0, Lʿˎ/ˑﹳ;->ʽ:Lcom/parse/ʼᐧ;

    return-void
.end method

.method public constructor <init>(Lʿˎ/ﾞᴵ;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʿˎ/ˑﹳ;->ﹳٴ:Lʿˎ/ﾞᴵ;

    iput p2, p0, Lʿˎ/ˑﹳ;->ⁱˊ:I

    return-void
.end method
