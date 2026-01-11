.class public abstract Lﾞʿ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Lﾞʿ/ⁱˊ;

.field public ˈ:J

.field public final ⁱˊ:Z

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﾞʿ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lﾞʿ/ﹳٴ;->ⁱˊ:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lﾞʿ/ﹳٴ;->ˈ:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lﾞʿ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    return-object v0
.end method

.method public abstract ﹳٴ()J
.end method
