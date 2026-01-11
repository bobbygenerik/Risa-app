.class public abstract Lᴵʾ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ⁱˊ:Lˑי/ʽ;

.field public static final ﹳٴ:Lˑי/ʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˑי/ʽ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lˑי/ʽ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lᴵʾ/ﾞᴵ;->ﹳٴ:Lˑי/ʽ;

    return-void
.end method

.method public static final ʽ(J)Ljava/lang/Long;
    .locals 1

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method

.method public static final ⁱˊ(I)Ljava/lang/Integer;
    .locals 1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public static final ﹳٴ(Z)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
