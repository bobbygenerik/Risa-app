.class public final Lcom/google/android/gms/internal/measurement/ﹳˑ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ˉˋ;


# static fields
.field public static final ﹳٴ:Lcom/google/android/gms/internal/measurement/יˑ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/יי;->ﹳٴ()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lar/tvplayer/core/domain/ʽﹳ;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v2}, Lar/tvplayer/core/domain/ʽﹳ;-><init>(Landroid/net/Uri;ZZ)V

    const-string v0, "measurement.tcf.consent_fix"

    invoke-virtual {v1, v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ﹳˑ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.tcf.client"

    invoke-virtual {v1, v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    const-string v0, "measurement.tcf.empty_pref_fix"

    invoke-virtual {v1, v0, v2}, Lar/tvplayer/core/domain/ʽﹳ;->ˉˆ(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/יˑ;

    return-void
.end method
